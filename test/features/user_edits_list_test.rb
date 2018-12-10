require 'test_helper'

feature 'UserEditsList' do
  scenario 'successfully' do
    create_new_list('Throwaway List')

    update_list_title('Keeper List')

    expect(page).must_have_css 'h1', text: 'Keeper List'
  end
end
