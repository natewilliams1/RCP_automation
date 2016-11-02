# class MemberPage
#   include PageObject
#   include Faker
#
#   page_url 'http://10.34.0.97:90/Member.mvc'
#
#
# text_field(:find_member, id: 'search-member-textbox')
# link(:add_new_member_link, text: 'Add New Member' )
# button(:find_member_button, src: '/Content/images/btn_find.png')
# text_field(:member_first_name, id: 'first_name')
# text_field(:member_last_name, id: 'last_name')
# text_field(:member_id, id: 'id_number')
# text_field(:member_barcode, id: 'barcode')
# text_field(:Member_birth_date, id: 'birth_date')
# radio_button(:member_active, id: 'member_is_active')
# radio_button(:member_disabled, id: 'member_is_disabled')
# button(:save_member, src: '/Content/images/btn_save.png')
# table(:member_table, id: 'member-list-table')
#
#
#
#   def add_member(params = {})
#     add_new_member_link.when_present(timeout = 60)
#     self.add_new_member_link
#     member_first_name_element.when_present(timeout = 60)
#     self.member_first_name = params[:member_first_name] || 'John'
#     self.member_last_name = params[:member_last_name] || 'Cena'
#     self.member_id = params[:member_id] || Faker::Code.isbn
#     self.member_barcode = params[:member_barcode] || Faker::Code.imei
#     self.member_birth_date = params[:member_birth_date] || '01/01/1980'
#     self.select_member_is_active
#     save_member
#
#   end
#
#   def find_member(params = {})
#     find_member_element.when_present(timeout = 60)
#     self.find_member = params[:find_member] || 'Cena, John'
#     find_member_button
#   end
#
# end