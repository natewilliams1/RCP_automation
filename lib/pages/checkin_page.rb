class CheckInPage
include PageObject
include Faker

page_url 'http://10.34.0.97:90/CheckIn.mvc'



text_field(:search_field, id: 'find-member-textbox')
link(:go_button, id: 'find-member-button')
table(:member_table, id: 'member-table')
div(:search_div, id: 'main_right')
div(:check_in, class: 'checkin' )
cell(:primary_action_cell, class: 'primary_action')
div(:checkin_success, class: 'checkin-success')
div(:gear_icon, class: 'gear')
dt(:block_member, text: 'Block')
# div(:member_blocked, class: 'blocked')
dt(:unblock_member, text: 'Unblock')


link(:associations, href: '/Association.mvc')
link(:communities, href: '/Community.mvc')
div(:user_greeting, class: 'subheader')
link(:sign_out, href: '/Account.mvc/log_off')

end