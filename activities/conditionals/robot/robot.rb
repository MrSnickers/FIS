# let's create a robot that can help us do certain things

class Robot
  # the robot should return a string "I am #fillthisin"

  # a robot should be happy if the day of the month is after the 15th AND
  # the temperature is hotter than 70 degrees and less than or equal to 100.
  # a robot should be very happy if the day of the month is after the 15th AND
  # the temperature is hotter than 100 degrees
  # a robot should be miserable if its after the 15th AND
  # the temperature is 70 degrees or colder

  # a robot should be sad if the day of the month is on or before the 15th AND
  # the temperature is hotter than 70 degrees and less than or equal to 100.
  # a robot should be very sad if the day of the month is on or before the 15th AND
  # the temperature is hotter than 100 degrees
  # a robot should be very miserable if its on or before the 15th AND
  # the temperature is 70 degrees or colder
  def temperature(my_temperature)
    if day_of_the_month > 15
      if my_temperature > 70 && my_temperature <= 100
        "I am happy."
      elsif my_temperature > 100
        "I am very happy."
      else
        "I am miserable."
      end
    else
        if my_temperature > 70 && my_temperature <= 100
        "I am sad."
      elsif my_temperature > 100
        "I am very sad."
      else
        "I am very miserable."
      end
    end

  end

  # if your name begins with the letters a-j
  # your robots optimal weight is your weight - 100 unless , 
  # that is greater than 30 in which case your robots optimal weight is 300

  # if you name begins with the letters k-z
  # your robots optimal weight is your weight + 46, 
  # and if that is greater than or equal to 50 your robots optimal weight is 0
  # if that is less than 50 your robots optimal weight is 1000

  def optimal_weight(my_weight, my_name)
    if my_name.downcase[0]==(a..j)
      if my_weight - 100 > 30
        300
      else 
        my_weight - 100 
      end
    elsif my_name.downcase[0]==(k..z)
       if my_weight + 46 >= 50
        0
        else 
        1000
        end 
      else
        "Your parents were creative in naming you, weren't they?"
      end

  end
  
  # your robots optimal height is your arm_length (estimated) multiplied by 50
  # and divided by 7
  def optimal_height(my_arm_length)
    (my_arm_length * 50)/7
  end

end

# you can test any method by doing Robot.new.method(method_argument)
# you shouldn't be using puts