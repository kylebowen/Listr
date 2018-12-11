require 'test_helper'

describe Grocery do
  it '#model_name' do
    expect(Grocery.model_name.to_str).must_equal 'List'
  end

  it 'creates a list with the proper type' do
    list = Grocery.new(title: 'MyTitle')
    expect(list.type).must_equal 'Grocery'
  end
end
