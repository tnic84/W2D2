class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def initialize 
   @secret_word = Hangman.random_word
   @guess_word = Array.new(@secret_word.length, '_')
   @attempted_chars = []
   @remaining_incorrect_guesses = 5
  end 

 def self.random_word 
  DICTIONARY.sample
 end 

 def guess_word
  return @guess_word
 end 

 def attempted_chars
  return @attempted_chars
 end

 def remaining_incorrect_guesses
  return @remaining_incorrect_guesses
 end 

 def already_attempted?(char)
    if @attempted_chars.include?(char)
       return true 
      else 
       return false
    end 
 end 

 def get_matching_indices(char)
 indices = []
  randomWord = @secret_word
    randomWord.each_char.with_index do |ele, i|
      if ele == char 
         indices << i
      end 
    end 
  indices
 end 

 def fill_indices(char, indices)
      indices.each do |i|
        @guess_word[i] = char
      end 
 end 

 def try_guess(char)
     if already_attempted?(char) 
       puts 'that has already been attempted'
       return false 
      else
        @attempted_chars << char
        matches = get_matching_indices(char)
        fill_indices(char, matches)
        if matches.empty?
           @remaining_incorrect_guesses -= 1
        end 
      return true
    end 
  end 


      def ask_user_for_guess
        puts "should print 'Enter a char:'"
        user_guess_input = gets.chomp
        try_guess(user_guess_input)
      end 

         def win?
           if @guess_word.join("") == @secret_word
             puts "WIN"
            return true 
           else 
            return false
           end 
        end 

        def lose?
          if @remaining_incorrect_guesses == 0
            puts "LOSE"
           return true 
          else 
           false
         end
       end

       def game_over?
          if win? || lose?
            puts @secret_word
            return true
          else 
            false
          end 
      end 

end 





