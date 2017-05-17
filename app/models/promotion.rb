class Promotion < ApplicationRecord
  belongs_to :shop_owner
  has_many :customer_promotions
  has_many :customers, through: :customer_promotions

# This code explain how to send a scheduled text promotion

# class method becuase self
  def self.unsent
   where(sent_time: nil)
  end
# checking of many overdue
  def self.overdue
    self.unsent.where('send_time < ?', Time.zone.now)
  end

# double negative really just checking for time
  def sent?
    not self.sent_time.nil?
  end
# checking for if single one is overdue
  def overdue?
    self.send_time < Time.zone.now
  end




  def send_all
    # should be
    # self.customers.each
# changed this from self.shop_owner.customers.each HOW COME?
    self.shop_owner.customers.each do |customer|
      send_to(customer)
    end
    self.update(sent_time: Time.zone.now)
  end

  def send_to(customer)
    client.messages.create(
    from: ENV["TWILIO_SOURCE_NUMBER"],
    to: "+#{customer.ph_number}",
    body: "#{self.body}"
    )
  end

  def client
    @client ||= Twilio::REST::Client.new
  end

  def translate(body)
    # @promotion = Promotion.new
    # if params[:promotion]
    # end
    url = "https://translation.googleapis.com/language/translate/v2?key=#{ENV['API_KEY']}&target=es&q=#{body}"
    res = HTTParty.post url
    @result = res.parsed_response['data']['translations'][0]['translatedText']
    self.translated_text = @result
    # if params[:promotion]
      # promotion = Promotion.create(shop_owner_id: ShopOwner.first.id, body: original_text)
    # end
    # byebug
  end
  # POST /shop_owners
  # POST /shop_owners.json

  # def translated_text
  #   original_text = !nil
  #   sparky = ShopOwner.find_by(original_text: original_text)
  #   @translated_text = sparky
  #   render json: @translated_text
  #   #   redirect_to root_path, notice: 'Created shop owner'
  # end

  def spanish
    spanish = []
    @customers.each do |customer|
      if customer.language == 'spanish'
        spanish << customer
      end
    end
  end

end



#
#
# this code works
# @client = Twilio::REST::Client.new
# @client.messages.create(
#   from: '+16467601704',
#   to: '+19173273223',
#   body: 'Hey there!',
#   media_url: 'http://example.com/smileyface.jpg' #optional
# )
# #
# #
#
# def send_text
# @client = Twilio::REST::Client.new
# @client.messages.create(
#   from: '+16467601704',
#   to: customer.clean_phone
#   body: promotion.english_promo
#   media_url: 'http://example.com/smileyface.jpg' #optional
# )
# #


# class TwilioController < ApplicationController
#   include Webhookable
#
#   before_action :set_phone, :set_message, :set_zip, :set_email, :set_rep
#   after_action :set_header
#   skip_before_action :verify_authenticity_token
#
# def phone_call
#
#             # put your own credentials here - from twilio.com/user/account
#       account_sid = ENV['TWILIO_ACCOUNT_SID']
#       auth_token = ENV['TWILIO_AUTH_TOKEN']
#             # set up a client to talk to the Twilio REST API
#       @client = Twilio::REST::Client.new('AC6c6cc3bf0fa71451edb86c7764f07f5c', 'ce0874767990e1640ad63ae98a4c45e9')
#       @call = @client.account.calls.create(
#             :to => "#{@phone}",
#             :from => "+18573133666",
#             :url => Message.find_by_position(@position).audio_link)
#             puts @call.to
#
#     user = User.create(zip: @zip, email: @email, message_id: Message.find_by_position(@position).id.to_i, rep: @rep)
#     redirect_to thanks_path
# end
#

#
# private
#
#   def set_phone
#     @phone = params[:rep_choice]
#   end
#
#   def set_message
#     @position= params[:stance]
#   end
#   def set_zip
#     @zip= params[:zip]
#   end
#   def set_email
#     @email= params[:email]
#   end
#
#   def set_rep
#     @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{params[:zip]}&output=json", format: :plain)
#     @reps = (JSON.parse @response, symbolize_names: true)[:results].uniq
#
#     @reps.each do |rep|
#          if rep[:phone] == params[:rep_choice]
#            @rep = rep[:name]
#          elsif params[:rep_choice] == "202-456-1111"
#            @rep = "Donald Trump"
#          end
#        end
#   end



#
# end
