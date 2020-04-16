require "rubygems"
require "nokogiri"
require 'open-uri'
require 'pp'


def scrap
page_url="https://coinmarketcap.com/all/views/all/"

page = Nokogiri::HTML(open(page_url))
a=[]
200.times do |i|
str="/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[#{i+1}]/td[3]/div"
key = page.xpath(str).text
str="/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[#{i+1}]/td[5]/a"
    value = page.xpath(str).text
    value = value.delete(",")
    value = value[1,value.length]
    value = value.to_f
    # puts value
    if value > 0
        h=Hash.new
        h[key]=value
        a << h
    end

end
puts "#"*100
p a
puts "#"*100
print a
puts "#"*100
puts a
puts "#"*100
pp a
puts "#"*100
return a
end

