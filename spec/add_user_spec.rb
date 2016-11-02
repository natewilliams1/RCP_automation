describe 'Add User' do


  # let(:user_first_name) {Faker::Name.first_name}
  # let(:user_last_name) {Faker::Name.last_name}
  # let(:user_name) {Faker::Internet.user_name(8)}


  context 'Add a valid user' do


    before(:all) do
      @user_name = 'test_automation'
      @user_password = 'UP83uN7pM5sEmBfA!'

      visit SignInPage do |page|
        page.login(
            user_name: @user_name,
            user_password: @user_password
        )
      end

      visit UserPage do |page|
        page.add_user # (user_first_name, user_last_name, user_name)
        page.find_user # (user_last_name, user_first_name)
      end

    end

    after(:all) do
      on UserPage do |page|
        page.delete_user
        visit CheckInPage
        page.sign_out
      end

    end

    it 'verifies that new user is added' do
      on UserPage do |page|
        page.user_table_element.when_present
        expect(page.user_table_element.text).to include("Dunphy, Phil")
      end
    end
  end
end