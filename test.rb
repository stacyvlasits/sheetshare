require 'rubygems'
require 'nokogiri'
require 'open-uri'

icount = 0 
xmlfeed = Nokogiri::XML(open("test.xml"))
items = xmlfeed.xpath("//item")
items.each do |item|
  text = item.children.children.first.text  
  if ( text =~ /99/ )
    icount += 1
  end
end
 
othercount = xmlfeed.xpath("//totalcount").inner_text.to_i - icount 

puts icount
puts othercount