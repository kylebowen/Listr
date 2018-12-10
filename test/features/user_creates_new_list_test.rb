require 'test_helper'

feature 'UserCreatesNewList' do
  scenario 'successfully' do
    create_new_list('Test Todo List')

    expect(page).must_have_css 'h1', text: 'Test Todo List'
  end
end
