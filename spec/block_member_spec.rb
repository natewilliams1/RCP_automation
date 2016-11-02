# # This is still a work in progress
# # I am stuck on actually clicking the block button.
# # I am not sure how to select a dt.
# # Also, the block feature is currently broken.
# # That means that I don't know what it should actually do :)
#
# describe 'Check In' do
#   context 'A valid member' do
#     before(:all) do
#       @user_name = 'test_automation'
#       @user_password = 'UP83uN7pM5sEmBfA!'
#
#       visit SignInPage do |page|
#         page.login(
#             user_name: @user_name,
#             user_password: @user_password
#         )
#       end
#
#       on CheckInPage do |page|
#         page.search_field = '120359-04'
#         page.go_button
#         page.member_table_element.when_present
#         sleep 5
#         page.gear_icon_element.click
#         # sleep 5
#         # page.block_member_element.when_present
#         # sleep 5
#         page.block_member_element.click
#         sleep 5
#       end
#
#     end
#
#     after(:all) do
#       on CheckInPage do |page|
#         page.sign_out
#       end
#     end
#
#     it 'verifies checkin success message is present' do
#       on CheckInPage do |page|
#         page.checkin_success_element.when_present
#         expect(page.checkin_success_element.text).to include("visits this month")
#       end
#     end
#   end
# end