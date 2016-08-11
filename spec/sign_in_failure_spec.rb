describe 'RCP Login' do
  context 'with invalid login credentials' do
    before(:all) do
      @user_name = 'not_a_real_username'
      @user_password = 'not_a_real_password'

      visit SignInPage do |page|
        page.login(
            user_name: @user_name,
            user_password: @user_password
        )
      end
    end

    after(:all) do
      # on SignInPage do |page|
      #   page.cancel_and_confirm
      # end
    end

    it 'is not able to login with invalid credentials' do
      on SignInPage do |page|
        # expect(page.user_greeting).to include("Hi, Automation User!")
        expect(page.unsuccessful_login).to include("Login was unsuccessful")
      end
    end
  end
end