require 'spec_helper'
require_relative '../my_arr'

RSpec.describe MyArr, '#missing_number' do
  it '取り除かれた数字が返却される' do
    arr = (1..1000).to_a.shuffle
    arr.delete(247)
    my_arr = MyArr.new(arr)

    expect(my_arr.missing_number).to eq 247
  end
end
