require 'rubygems'
require 'nokogiri'
require 'open-uri'

icount = 0 
xmlfeed = Nokogiri::XML(open("test.xml"))
all_items = xmlfeed.xpath("//item")

  all_items.each do |adv|
            if (adv.children.first.child.inner_text.include? "99")
                icount = icount + 1
            end
  end

othercount = xmlfeed.xpath("//totalcount").inner_text.to_i - icount 

puts icount
puts othercount