require 'httparty'
$original_text = ShopOwner.find(1).original_text
url = "https://translation.googleapis.com/language/translate/v2?key=#{ENV['API_KEY']}&target=es&q=#{$original_text}"

res = HTTParty.post url

p res.parsed_response['data']['translations'][0]['translatedText']
