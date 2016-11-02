
class UserPage
  include PageObject

  page_url 'http://10.34.0.97:90/User.mvc'

  div(:user_block, id: 'main_right' )
  image(:find_button, src: '/Content/images/btn_find.png')
  text_field(:find_user_field, id: 'tbFindUsers')
  link(:add_user_link, link_text: 'Add New User')
  text_field(:new_user_first_name, id: 'first_name')
  text_field(:new_user_last_name, id: 'last_name')
  text_field(:new_user_name, id: 'username' )
  text_field(:new_user_password, id: 'password')
  text_field(:new_user_password_confirm, id: 'password_confirm')
  button(:save, src: '/Content/images/btn_save.png')
  cell(:edit_user, class: 'edit')
  link(:delete_user_link, id: 'delete-user-link')
  table(:user_table, id: 'user-table')
  link(:sign_out, href: '/Account.mvc/log_off')


      def add_user(params = {})
    add_user_link_element.when_present(timeout = 60)
    self.add_user_link
    new_user_first_name_element.when_present(timeout = 60)
    self.new_user_first_name = params[:user_first_name] || 'Phil'
    self.new_user_last_name = params[:user_last_name] || 'Dunphy'
    self.new_user_name = params[:new_user_name] || Faker::Internet.user_name(8)
    self.new_user_password = params[:new_user_password] || 'Smile123'
    self.new_user_password_confirm = params[:new_user_password_confirm] || 'Smile123'
    save
  end

  def find_user(params = {})
    find_user_field_element.when_present(timeout = 60)
    self.find_user_field = 'Dunphy' || '%'
    find_button_element.when_present(timeout = 60)
    # sleep 1
    find_button_element.click
  end

  def delete_user
    edit_user_element.when_present(timeout = 60)
    self.edit_user_element.click
    delete_user_link_element.when_present(timeout = 60)
    self.delete_user_link
  end


end