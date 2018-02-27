class MultiplicationTable < Array
  def initialize(*numbers)
    multiplication_table = []

    multiplication_table = [[1] + numbers]

    numbers.each do |first_number|
      multiplication_table <<
        [first_number] +
        numbers.map { |second_number| first_number * second_number }
    end

    super(multiplication_table)
  end
end
