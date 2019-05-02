require_relative "board"

def yesorno(test)
    loop do
        puts "Are you ready for " + test + "? If so, enter y, if not enter n."
        s=gets.chomp.strip.downcase
        if s=="n"
            return false
        elsif s=="y"
            return true
        end
    end
end


def main
    # test 1
    puts "For test 1, board.rb needs to declare a class called Board. " 
    puts "For the first test, just declare a constant within the class called " 
    puts "Colors.  Make it equal to an array of six strings, each of which is a " 
    puts "lowercase name of a color you want to use."
    return if !yesorno("test 1")
    puts Board::Colors.to_s
    
    # test 2
    puts "For test 2, Board needs an initialize method.  This should create "
    puts "an array of four strings, each of which is randomly chosen from Colors.  Note " 
    puts "that you may have the same color used several times.  To make the random " 
    puts "choice, use the built in rand method.  rand(6) will give you a number from" 
    puts " 0 to 5.  Call the array you build @secret, because it is what the player " 
    puts "must guess. Add an attr_accessor for secret."
    return if !yesorno("test 2")
    board=Board.new
    puts board.secret.to_s
    
    # test 3
    puts "For test 3 Board needs another method, evaluate_guess. You pass an " 
    puts "array of four strings, being the colors in the guess.  The method should "
    puts "return an array of two integers.  The first integer is the number of colors " 
    puts "that match the colors in the secret and are in the right spots.  The second "
    puts "integer is the number of the other colors in the guess that match the secret "
    puts "but aren't in the right spots.  Do not double count or you will confuse the "
    puts "guesser.  This is where you will need to make copies of the array."
    yesorno("test 3")
    board.secret=["red","red","yellow","green"]
    result=board.evaluate_guess(["red","green","red","blue"])
    puts "The result is " + result.to_s
    puts "It should be " + [1,2].to_s
    
    puts "Now you are ready to write the game.  You will need another two classes, "
    puts "Player in player.rb and MMGame in mmgame.rb.  I have provided pseudocode for these"
    puts "two classes.  Just copy player.rb.txt to player.rb and mmgame.rb.txt to mmgame.rb."
    puts "Then write the code that matches the pseudocode."
end    
    
main

