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
    return say_in_local_language("The total is #{total}")
  end


end
