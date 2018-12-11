require 'test_helper'

describe Basic do
  it '#model_name' do
    expect(Basic.model_name.to_str).must_equal 'List'
  end

  it 'creates a list with the proper type' do
    list = Basic.new(title: 'MyTitle')
    expect(list.type).must_equal 'Basic'
  end
end
