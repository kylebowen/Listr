require 'test_helper'

describe ListItem do
  let(:valid_list) { List.create(title: 'ValidList') }

  it 'creates a valid ListItem' do
    item = ListItem.new(description: 'ValidTodo', list_id: valid_list.id)
    expect(item).must_be :valid?
  end

  it 'is invalid without a description' do
    item = ListItem.new(list_id: valid_list.id)
    expect(item).wont_be :valid?
  end

  it 'is invalid without a list_id' do
    item = ListItem.new(description: 'ValidTodo')
    expect(item).wont_be :valid?
  end
end
