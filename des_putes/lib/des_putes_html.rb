require "rubygems"
require "nokogiri"
require 'open-uri'
require 'pp'

def putes
tab=[]
page_url="https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600"
page = Nokogiri::HTML(open(page_url))

600.times do |i|
    str="/html/body/div[1]/main/div/div/div[1]/ul[#{i}]/li[1]/h2"
    unless page.xpath(str).text ==""

        key = page.xpath(str).text
        str="/html/body/div[1]/main/div/div/div[1]/ul[#{i}]/li[5]/a[1]"
        value = page.xpath(str).text
        if value == ""
            value = page.xpath("/html/body/div[1]/main/div/div/div[1]/ul[#{i}]/li[4]/a[1]").text
        end

        if key!= nil
            string=key.split(' ')
            last_name=string[2]
            first_name=string[1]
            h=Hash.new
            h["first_name"]=first_name
            h["last_name"]=last_name
            h["email"]=value
            tab << h
            end
    end
end

return tab
end
