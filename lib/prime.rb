class Prime
  class << self
    def find(max_length = 10)
      primes = []

      (0..Float::INFINITY).each do |number|
        break if primes.size == max_length

        primes << number if prime?(number)
      end

      primes
    end

    private

    def prime?(number)
      return false if number < 2
      return true if number == 2
      return false if number.even?

      divider = 3

      while divider * divider <= number
        return false if (number % divider).zero?

        divider += 2
      end

      true
    end
  end
end
