require 'test_helper'

describe List do
  let(:categories) { %w[Basic Grocery Instructional Todo]}

  it '#select_options' do
    expect(List.select_options).must_equal categories
  end

  it 'creates a valid list' do
    list = List.new(title: 'MyList', type: 'Todo')
    expect(list).must_be :valid?
  end

  it 'is invalid without a title' do
    list = List.new
    expect(list).wont_be :valid?
  end

  it 'creates a Basic List when not passed a :type' do
    list = List.new(title: 'MyList')
    expect(list).must_be_instance_of Basic
  end
end
