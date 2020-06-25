#Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.

#Example 1:

#Input: a = 1, b = 2
#Output: 3
#Example 2:

#Input: a = -2, b = 3
#Output: 1

def get_sum(a, b)
  a_bin = a.to_s(2)
  b_bin = b.to_s(2)
  a_size = a_bin.size
  b_size = b_bin.size

  size = a_size > b_size ? a_size : b_size
  index = size-1

  (a_size - b_size).abs.times do |t|
    if a_size < b_size
      a_bin = '0' + a_bin
    else
      b_bin = '0' + b_bin 
    end
  end
    
  result = ''
  while index > -1 
     result = '0' + result if a_bin[index] == '0' && b_bin[index] == '0'
     result = '1' + result if (a_bin[index] == '1' && b_bin[index] == '0' || a_bin[index] == '0' && b_bin[index] == '1')
     result = '10' + result if a_bin[index] == '1' && b_bin[index] == '1'     
    index = index - 1
    puts result
  end
   
  result.to_i(2)  
        
end
