class GuessingGame
    def initialize(min, max)
        @secret_num = rand min..max
        @num_attempts = 0
        @game_over = false
    end 

    def num_attempts
        @num_attempts
    end 

    def game_over?
        @game_over
    end 
 
    def check_num(num)
           @num_attempts += 1
        if num == @secret_num 
            p "you win"
           @game_over = true 
        elsif num > @secret_num 
            p "too big" 
        else num < @secret_num 
            p "too small"
        end 
    end 

    def ask_user 
        p "enter a number"
        number = gets.chomp.to_i
        check_num(number)
    end 
end










