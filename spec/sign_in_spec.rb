describe 'RCP Login' do
  context 'with admin login credentials' do
    before(:all) do
      @user_name = 'test_automation'
      @user_password = 'UP83uN7pM5sEmBfA!'

      visit SignInPage do |page|
        page.login(
            user_name: @user_name,
            user_password: @user_password
        )
      end
    end

    after(:all) do
       on CheckinPage do |page|
         page.sign_out
       end
    end

    it 'currently signs in as Daxko Admin User' do
      on CheckinPage do |page|
        # expect(page.user_greeting).to include("Hi, Automation User!")
        expect(page.communities_element.text).to include("Communities (Daxko only)")
        expect(page.associations_element.text).to include("Associations (Daxko only)")
      end
    end
  end
end
