require 'test_helper'

feature 'UserEditsListItem' do
  scenario 'successfully' do
    create_new_list('ToDo')
    add_item_to_list('Throwaway item')

    update_list_item_description('Updated item')

    expect(page).wont_have_css '.list-items td', text: 'Throwaway item'
    expect(page).must_have_css '.list-items td', text: 'Updated item'
  end
end
