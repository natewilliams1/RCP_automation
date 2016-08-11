describe 'Check In' do
  context 'A valid user' do
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
        page.checkin_field = '12345'
        page.submit_button
        page.member_table_element.when_present
      end

    end

    after(:all) do
      # visit CheckinPage do |page|
      #   page.cancel_and_confirm
      # end
    end

    it 'currently signs in as Daxko Admin User' do
      on CheckInPage do |page|
        expect(page.search_div_element.text).to include("Cash, Johnny")
      end
    end
  end
end
