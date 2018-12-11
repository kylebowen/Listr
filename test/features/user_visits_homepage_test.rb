require 'test_helper'

# smoke test
feature 'User visits homepage' do
  let(:list_types) { %w[Basic Grocery Instructional Todo] }

  scenario 'successfully' do
    visit root_path

    expect(page).must_have_css 'h1', text: 'Listr'
    expect(page).must_have_css 'a', text: 'All Lists'
    list_types.each do |type|
      expect(page).must_have_css 'a', text: type
    end
  end
end
