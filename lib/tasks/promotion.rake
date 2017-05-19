namespace :promotion do
  desc "send scheduled promotions"
  task send: :environment do
    Promotion.overdue.each do |promotion|
      promotion.send_to_customers
      puts promotion
    end
  end
end
