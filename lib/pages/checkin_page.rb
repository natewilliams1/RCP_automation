class CheckInPage
include PageObject

page_url 'http://10.34.0.97:90/CheckIn.mvc'



text_field(:checkin_field, id: 'find-member-textbox')
link(:submit_button, id: 'find-member-button')
table(:member_table, id: 'member-table')
div(:search_div, id: 'main_right')



link(:associations, href: '/Association.mvc')
link(:communities, href: '/Community.mvc')
div(:user_greeting, class: 'subheader')

end