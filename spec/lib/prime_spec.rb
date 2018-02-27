require 'minitest/autorun'

require 'prime'

describe Prime do
  describe '.find' do
    it 'returns first 10 prime numbers' do
      assert_equal(
        Prime.find,
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      )
    end
  end
end
