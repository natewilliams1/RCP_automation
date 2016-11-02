describe 'Check In' do
  context 'A valid member' do
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
        page.member_table_element.when_present(timeout = 35)
        page.check_in_element.click
      end

    end

    after(:all) do
      on CheckInPage do |page|
        page.sign_out
      end
    end

    it 'verifies checkin success message is present' do
      on CheckInPage do |page|
        page.checkin_success_element.when_present
        expect(page.checkin_success_element.text).to include("visits this month")
      end
    end
  end
end