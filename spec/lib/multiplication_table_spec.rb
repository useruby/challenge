require 'minitest/autorun'

require 'multiplication_table'

describe MultiplicationTable do
  describe '.new' do
    it 'creates new instance of multiplication table for 2, 3, 4, 5' do
      multiplication_table = MultiplicationTable.new(2, 3, 4, 5)

      assert_equal(
        multiplication_table,
        [
          [1,  2,  3,  4,  5],
          [2,  4,  6,  8, 10],
          [3,  6,  9, 12, 15],
          [4,  8, 12, 16, 20],
          [5, 10, 15, 20, 25]
        ]
      )
    end
  end
end
