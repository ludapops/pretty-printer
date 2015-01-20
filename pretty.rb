# # Write a class that has a 
# # method that receives an array 
# # and prints it beautifully in 
# # the console.

# Array:
#   My
#   3
#   Hash:
#     key -> value
#     other_key -> other_value
#   12-07-2014
#   Array:
#     Pied
#     Piper

require 'pry'
require 'awesome_print'
require 'date'

class PrettyPrinter
	def initialize(array) 
		@array = array
		@baseHash = {}
	end

	def print
		
		puts "#{@array.class}:"
		# puts "#{@array}"
		@array.each do |element|
    		# puts element.class
    		if element.class == Array || element.class == Hash
				puts "\t #{element.class}:\n"
				element.each_with_index do |item, i|
    				if element.class == Hash
						puts "\t\t" + item[0].to_s + " -> " + item[1].to_s + "\n"
                	elsif element.class == Array
                		# binding.pry
                		puts "\t\t" + item + "\n"

                  	end
                
				end
			else
				puts "\t #{element}"
			end
		end 
		
	end 

	# def splitter(obj)
	# 	if obj.class == @array.class
	# 		array.each {|element| puts element}
	# 	elsif obj.class == @baseHash.class
	# 		hash.each {|element| puts element}
	# 	else

	# 	end 

	# end
	# element.arraysplitter(do i need to pass an array here if so how?)
	# element.arrayspliter(element)

end 

#a_hash = {1 => "Marc", 2 => "Sophie"}
a_hash = {key: "value", other_key: "other_value"}
dateObj = Date.new

a_date = dateObj.to_s


test_array = ["My", 3, a_hash, a_date,["Pied","Piper"]]

printer = PrettyPrinter.new(test_array)

printer.print