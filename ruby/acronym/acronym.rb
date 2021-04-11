=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym
    def self.abbreviate(long_name)
        
        delimiters =[' - ', ' ', '-']
        different_words = long_name.split(Regexp.union(delimiters))
        
        abbreviation = ""

        different_words.each do |a_word|
            abbreviation = abbreviation + a_word.split("").at(0)
        end

        abbreviation = abbreviation.upcase

        return abbreviation
    end
end

# p Acronym.abbreviate("This is a test of course")