require 'test_helper'

describe Instructional do
  it '#model_name' do
    expect(Instructional.model_name.to_str).must_equal 'List'
  end

  it 'creates a list with the proper type' do
    list = Instructional.new(title: 'MyTitle')
    expect(list.type).must_equal 'Instructional'
  end
end
