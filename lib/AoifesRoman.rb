 class DecimaltoRoman
   @roman = {
    1000 => "M",
    900 => "CM", 
    500 => "D", 
    400 => "CD", 
    100 => "C",
    90  => "XC", 
    50  => "L", 
    40  => "XL", 
    10  => "X",
    9   => "IX", 
    5   => "V", 
    4   => "IV", 
    1   => "I"
   }


# create keys to store the decimal values
  def self.convert(decimal_number)   
  keys = @roman.keys
     roman_str = ''
# The loop
   while decimal_number != 0
    key = keys.find {|k| k <= decimal_number}
     roman_str = roman_str + @roman[key]
    decimal_number = decimal_number - key
   end

   return roman_str 
  end

  def recursion(decimal_number)
   return convert_by_recursion(decimal_number, '')   
  end

  private        
  def convert_by_recursion(decimal_number, roman_str)   
   if decimal_number == 0
    return roman_str
   else 
    keys = @roman.keys

  while decimal_number != 0
    key = keys.find {|k| k <= decimal_number}

    roman_str = roman_str + @roman[key]
  decimal_number = decimal_number - key
    end  
  convert_by_recursion(decimal_number, roman_str)   
    end
  end
end