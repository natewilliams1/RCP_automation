class CheckinPage
include PageObject

page_url 'http://10.34.0.97:90/CheckIn.mvc'

text_field(:checkin_field, id: 'find-member-textbox')
link(:associations, href: '/Association.mvc')
link(:communities, href: '/Community.mvc')
div(:user_greeting, class: 'subheader')

end