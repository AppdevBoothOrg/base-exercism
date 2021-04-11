=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
    
    def self.value(color_array)
        color_coding = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
        
        first_digit = color_coding.index(color_array.at(0))
        second_digit = color_coding.index(color_array.at(1))

        return first_digit * 10 + second_digit
    end
end