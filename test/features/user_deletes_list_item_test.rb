require "test_helper"

feature "UserDeletesListItem" do
  scenario "successfully" do
    create_new_list('Throwaway List')
    add_item_to_list('Delete this item')

    click_on 'Destroy'

    expect(page).must_have_css 'h1', text: 'Throwaway List'
    expect(page).wont_have_css '.list-items td', text: 'Delete this item'
  end
end
