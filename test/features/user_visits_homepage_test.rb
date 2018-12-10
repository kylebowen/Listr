require 'test_helper'

# smoke test
feature 'User visits homepage' do
  scenario 'successfully' do
    visit root_path

    page.must_have_css 'h1', text: 'Listr'
  end
end
