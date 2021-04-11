=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
    def self.is_integer?(string_to_test)
        if string_to_test == string_to_test.to_i.to_s
            return true
        else return false
        end 
    end



    def self.encode(message_to_encode)
        array_to_encode = message_to_encode.split("")
        #p array_to_encode
        character_counter = 0
        array_to_count_occurances = Array.new

        array_to_encode.count.times do |index|
            if index + 1 < array_to_encode.count
                if array_to_encode.at(index) == array_to_encode.at(index + 1)
                    character_counter = character_counter + 1
                else
                    array_to_count_occurances.push(character_counter+1)
                    array_to_count_occurances.push(array_to_encode.at(index))
                    character_counter = 0
                end
            end
            
        end

        array_to_count_occurances.push(character_counter+1)
        array_to_count_occurances.push(array_to_encode.last)
        character_counter = 0

        array_to_count_occurances.delete(1)

        return array_to_count_occurances.join()

    end

    def self.decode(message_to_decode)
        decoded_message = ""

        message_bits_remaining = message_to_decode
        array_bits_remaining = message_bits_remaining.split("")

        while message_bits_remaining.length > 0
          
          if is_integer?(array_bits_remaining.at(0))
            multiplier_integer = message_bits_remaining.to_i
            char_starting_point = multiplier_integer.to_s.length
            decoded_message = decoded_message + array_bits_remaining.at(char_starting_point) * multiplier_integer
            
            (multiplier_integer.to_s.length+1).times do
               array_bits_remaining.shift() 
            end

            message_bits_remaining = array_bits_remaining.join()

          else
            decoded_message = decoded_message + array_bits_remaining.at(0)
            array_bits_remaining.shift()
            message_bits_remaining = array_bits_remaining.join()
          end


        end

        return decoded_message
        
    end

end
