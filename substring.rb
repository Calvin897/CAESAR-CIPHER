
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

string = "Howdy partner, sit down! How's it going?"

def substring(first_string, dictionary)
    
fixed_str = first_string.gsub(/[^A-Za-z0-9 ]/, '').downcase 
array1 = fixed_str.split(' ')

string_arr = array1.join('|')
final_arr = string_arr.split(' ')
    
#    p checked_arr = dictionary.map{|value| final_arr[0].match(value) ? value : ""}
checked_arr = dictionary.map{|value| final_arr[0].scan value}


final_hash = Hash.new(0)

flattened_arr = checked_arr.flatten
flattened_arr.each do |v|
    final_hash[v] += 1
  end
  p final_hash

end
 substring(string, dictionary)