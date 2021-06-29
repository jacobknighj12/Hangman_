File.open("questionAndAnswerFile.txt", "r") do |questionAndAnswerFile|
File.open("hangman.rb", "r") do |hangman|
File.open)("incorrectLetters.rb", "a+") do |incorrectLetters|

index = 0
questionArray = questionAndAnswerFile.readlines()
questionAndAnswer = questionArray[index].split("|")
question = questionAndAnswer[0].strip()
answer = questionAndAnswer[1].strip()
repeat = true
playerInput = ""
lives = 6
score = 0

puts "Welcome!"
while lives >=1 or repeat == true
  puts "Here is your hint: %s" % question
  playerInput = gets

  if playerInput.include? answer
    score += 1
    index +=1
    print "Correct! %s" % answer + " Your score: %s" % score
    puts " lives left: %s" % lives
    if index < questionArray.length()
      questionAndAnswer = questionArray[index].split("|")
      question = questionAndAnswer[0].strip()
      answer = questionAndAnswer[1].strip()
      else
        puts "End of game! Thanks for playing!"
        puts "Play again?"
        puts "y/n"
        playerInput = gets
          if playerInput.include? "n" then break
            end
          if playerInput.include? "y" then index = 0
            questionAndAnswer = questionArray[index].split("|")
            question = questionAndAnswer[0].strip()
            answer = questionAndAnswer[1].strip()
          end
      end
    else
      puts "Incorrect"
      lives -= 1
      puts "lives left: %d" % lives

      if lives == 0
        puts "Play again?"
        puts "y/n"
        playerInput = gets
          if playerInput.include? "n" then break
          else
            index = 0
            questionAndAnswer = questionArray[index].split("|")
            question = questionAndAnswer[0].strip()
            answer = questionAndAnswer[1].strip()
            lives = 3
            end
            end
    if lives >= 1 then puts "Try again!"
      puts "the word starts with a %s" % answer[0]
        end
      end
    end
  end
end
end
