require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_addresses
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    @emails = []
    @email_arr_comma = @email_addresses.split(", ")
    @email_arr_space_comma = @email_addresses.split(",")
    @email_arr_space = @email_addresses.split(" ")
    @emails.push(@email_arr_comma, @email_arr_space, @email_arr_space_comma)
    @emails.flatten!
    @emails.collect! {|email| email.strip                }
    @emails.collect! {|email| email.tr(',', '')}
    @emails.uniq
   #binding.pry
  end
  
end