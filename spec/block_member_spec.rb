

describe 'Block' do
  context 'A visiting member' do
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
        page.search_field = '120359-04'
        page.go_button
        page.member_table_element.when_present(timeout = 60)
        page.gear_icon_element.when_present.click
        page.block_member_element.when_present.click
      end

    end

    after(:all) do
      on CheckInPage do |page|
        page.gear_icon_element.when_present.click
        sleep 1
        page.unblock_member_element.when_present.click
        sleep 1
        page.sign_out
      end
    end

    it 'verifies that visiting member is successfully blocked' do
      on CheckInPage do |page|
        page.primary_action_cell_element.when_present
        expect(page.primary_action_cell_element.text).to include("Blocked")
      end
    end
  end
end