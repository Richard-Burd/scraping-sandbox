# This sandbox is for screwing around with scraping stuff
require 'pry'
require 'mail'
require 'nokogiri'
require 'open-uri'
require 'rspec'
require_relative './environment'

#html = open("https://flatironschool.com/")
#Nokogiri::HTML(html)
#doc = Nokogiri::HTML(html)

doc = Nokogiri::HTML(open("http://flatironschool.com/"))

#doc.css(".headline-26OIBN")
#doc.css(".headline-26OIBN").text
#doc.css(".headline-26OIBN").text.strip
#puts doc

# <h2 class="title-3Kf9MY" data-testid="title">Our career-change courses</h2>

courses = doc.css(".title-3Kf9MY")

def list_courses(var) 
  var.each do |course|
	puts course.text.strip
  end
end 

puts list_courses(courses)

p courses[0].text
p courses[0].name
p courses[0].attributes

# enter in the values above to see the return values they generate
binding.pry

