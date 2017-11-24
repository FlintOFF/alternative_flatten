require_relative '../flatten_a'

RSpec.describe 'Array' do
  describe 'flatten_a' do
    it 'should return same result as method flatten' do
      arr = [[1, 2, [3]], 4, [[[11, [22], [[[33]]]]]]]
      expect(arr.flatten_a).to eq(arr.flatten)
    end

    it 'should return array of string values' do
      arr = ["1 ", ' 2', '3']
      expect(arr.flatten_a).to eq(arr.flatten)
    end

    it 'should return empty array' do
      arr = [[], [[]]]
      expect(arr.flatten_a).to eq(arr.flatten)
    end
  end
end