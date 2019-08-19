# PHASE 2
class NotFruitError < StandardError; end
class NotCoffeeError < StandardError; end
def convert_to_int(str)
  begin
    
   Integer(str)
  rescue ArgumentError 
    return nil
  end
  
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise NotFruitError 
  end 
end

def feed_me_a_fruit
  begin 
  puts "Hello, I am a friendly monster. :)"
  
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  
  reaction(maybe_fruit) 
  rescue NotFruitError
    begin 
      puts "You entered the wrong fruit, now feed me coffee"
      input = gets.chomp
      if input != "coffee"
        raise NotCoffeeError
      else
        retry
      end
    rescue NotCoffeeError   
        retry
    end
  end
end  

class NotBestFriendError < StandardError; end
class DontbeBoringError < StandardError; end
# PHASE 4
class BestFriend

  def initialize(name, yrs_known, fav_pastime)
    begin
      if name.length == 0 || fav_pastime.length == 0
        raise DontbeBoringError
      end
      raise NotBestFriendError if yrs_known < 5
      @name = name
      @fav_pastime = fav_pastime
      @yrs_known = yrs_known
      

    rescue DontbeBoringError 
      puts "You must write something for name and favorite past time"
      
    rescue NotBestFriendError
      puts "I'm sorry, I don't know you"
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


