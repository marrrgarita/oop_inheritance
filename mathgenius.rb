require_relative 'multilinguist'

class MathGenius < Multilinguist

  def add_total(nums)
    total = 0

    if nums.class == Array
      nums.each do |num|
        total += num
      end


    else
      puts "please input an array of numbers"
    end
    return say_in_local_language("The total is #{total  }")
  end


end

me = MathGenius.new
puts me.add_total([23,45,676,34,5778,4,23,5465])
me.travel_to("India")
puts me.add_total([6,3,6,68,455,4,467,57,4,534])
me.travel_to("Italy")
puts me.add_total([324,245,6,343647,686545]) 
