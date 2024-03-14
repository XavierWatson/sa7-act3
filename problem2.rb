
$score = 0
$options = ['1','2','3','exit']


def play_game
    input = ''
    until input == 'exit'
        puts "Choose a room (1-3) to enter or 'exit' to end the game: [Score: #{$score}]"
        input = gets.chomp

        if input == '1'
            puts "You entered room #{input} and gained 5 points"
            $score += 5
        
        elsif input == '2'
            puts "You entered room #{input} and gained 10 points"
            $score += 10

        elsif input == '3'
            puts "You entered room #{input} and gained 15 points"
            $score += 15
        else
            puts "Invalid input, choose an option from #{$options}"
        end
        
    end
    puts "Final Score: #{$score}"
end

puts "Welcome To the Adventure Game"
play_game