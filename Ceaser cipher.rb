def alphabet_positions(string, key)
     array1 = string.chars.map{|x| x.ord}
     letter_check = array1.map{|number| (number >= 97 && number <= 122) || (number >= 65 && number <= 90)? number : number.chr}
     wrap_array = letter_check.map{ |number| number.is_a?(Numeric) ? number + key : number}
     final_array = wrap_array.map { |number| number.is_a?(Numeric) && number > 122 || (number.is_a?(Numeric) && number > 90 && number <97) ? number - 26 : number}
    p x = final_array.map{ |c| c.chr}.join('')
end

alphabet_positions("What a string!", 5)



  
  