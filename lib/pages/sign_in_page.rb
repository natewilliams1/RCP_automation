class SignInPage
  include PageObject

  page_url 'http://10.34.0.97:90/CheckIn.mvc'

  text_field(:user_name, id: 'username')
  text_field(:user_password, id: 'password')
  button(:submit, id: 'logon_button')
  div(:unsuccessful_login, class: 'validation-summary-errors')

  def login(params = {})
    user_name_element.when_present
    self.user_name = params[:user_name] || 'test_automation'
    self.user_password = params[:user_password] || 'UP83uN7pM5sEmBfA!'
    submit
  end

end