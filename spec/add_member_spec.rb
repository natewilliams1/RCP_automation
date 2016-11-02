# describe 'Add Member' do
#   context 'Add a member to Member Database' do
#     before(:all) do
#       @user_name = 'test_automation'
#       @user_password = 'UP83uN7pM5sEmBfA!'
#
#
#       visit SignInPage do |page|
#         page.login(
#             user_name: @user_name,
#             user_password: @user_password
#         )
#       end
#
#       visit MemberPage do |page|
#         page.add_member # (user_first_name, user_last_name, user_name)
#         page.find_member # (user_last_name, user_first_name)
#       end
#
#     end
#
#     after(:all) do
#       # on MemberPage do |page|
#         # page.delete_user
#         visit CheckInPage
#         page.sign_out
#       end
#
#     end
#
#     it 'verifies that new member is added' do
#       on MemberPage do |page|
#         page.member_table_element.when_present(timeout = 60)
#         expect(page.member_table_element.text).to include("Cena, John")
#       end
#     end
#   end
