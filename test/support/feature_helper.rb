module FeatureHelper
  def create_new_list(title)
    visit lists_path
    click_on 'New List'
    fill_in 'Title', with: title
    click_on 'Create List'
  end

  def add_item_to_list(desc)
    click_on 'New Item'
    fill_in 'Description', with: desc
    click_on 'Create List item'
  end

  def update_list_item_description(desc)
    within('.list-items') do
      click_on 'Edit'
    end
    fill_in 'Description', with: desc
    click_on 'Update List item'
  end

  def update_list_title(title)
    click_on 'Edit'
    fill_in 'Title', with: title
    click_on 'Update List'
  end
end
