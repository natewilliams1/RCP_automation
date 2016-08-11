require 'watir-webdriver'

def RCP_login
  @browser.goto 'http://10.34.0.97:90/CheckIn.mvc'
  @browser.text_field(:user_name, id: 'username').set 'test_automation'
  @browser.text_field(:user_password, id: 'password').set 'UP83uN7pM5sEmBfA!'
  @browser.button(:submit, id: 'logon_button').click

end

def RCP_logout
  puts @browser.cookies.to_a
  puts 'who all see the cookies say "YEAH!"'
  @browser.cookies.clear
  puts @browser.cookies.to_a
  puts 'cookies gone?...they best be'


end