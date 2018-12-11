require 'test_helper'

describe Todo do
  it '#model_name' do
    expect(Todo.model_name.to_str).must_equal 'List'
  end

  it 'creates a list with the proper type' do
    list = Todo.new(title: 'MyTitle')
    expect(list.type).must_equal 'Todo'
  end
end
