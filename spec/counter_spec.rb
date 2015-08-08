require 'spec_helper'
require 'components/counter_number'
require 'components/counter'

describe Counter do
  it 'should respond to #parent' do
    expect(Counter.new).to be_a Counter
  end
end

