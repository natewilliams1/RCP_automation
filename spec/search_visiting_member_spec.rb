describe 'Search for' do
  context 'A member' do
    before(:all) do
      @user_name = 'test_automation'
      @user_password = 'UP83uN7pM5sEmBfA!'

      visit SignInPage do |page|
        page.login(
            user_name: @user_name,
            user_password: @user_password
        )
      end

      on CheckInPage do |page|
        page.search_field = '12345'
        page.go_button
        page.member_table_element.when_present(timeout = 60)
      end

    end

    after(:all) do
      on CheckInPage do |page|
        page.sign_out
      end
    end

    it 'verifies member is returned' do
      on CheckInPage do |page|
        expect(page.search_div_element.text).to include("Cash, Johnny")
      end
    end
  end
end
