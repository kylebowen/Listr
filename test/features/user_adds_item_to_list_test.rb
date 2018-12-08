require "test_helper"

feature "UserAddsItemToList" do
  scenario "successfully" do
    create_new_list('New List')
    add_item_to_list('New Item')

    expect(page).must_have_css '.list-items td', text: 'New Item'
  end
end
