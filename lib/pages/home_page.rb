class HomePage
  include PageObject

  page_url 'http://10.34.0.97:90/CheckIn.mvc'

  text_field(:user_name, id: 'username')
  text_field(:user_password, id: 'password')
  button(:submit, id: 'logon_button')

end