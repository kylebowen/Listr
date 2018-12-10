require 'test_helper'

feature 'UserDeletesList' do
  scenario 'successfully' do
    create_new_list('Throwaway List')

    visit lists_path
    click_on 'Destroy'

    expect(page).must_have_css 'h1', text: 'Lists'
    expect(page).wont_have_css 'td', text: 'Throwaway List'
  end
end
