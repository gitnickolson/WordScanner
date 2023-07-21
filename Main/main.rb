# frozen_string_literal: true

class Main
  def palindrometest
    puts "Which word would you like me to test?"
    palindrome = gets.chomp
    wordreverse = palindrome.reverse

    if wordreverse == palindrome then
      puts "#{palindrome} is a palindrome."

    else
      puts "#{palindrome} is not a palindrome."

    end
  end

  def anagramtest
    puts "This will require you to enter 2 words for me to compare."
    puts "What's the first word?"
    anagram1 = gets.chomp
    puts "What's the second word?"
    anagram2 = gets.chomp

    anagram11 = anagram1.chars
    anagram22 = anagram2.chars

    sortedword1 = anagram11.sort
    sortedword2 = anagram22.sort

    if sortedword1 == sortedword2
      puts "These words are Anagrams."

    else
      puts "These words aren't Anagrams."

    end
  end

  def choicemethod
    puts "What should I test for?"
    choice = gets.chomp
    if choice.start_with?("Pali", "pali") then
      palindrometest()

    elsif choice.start_with?("Ana", "ana") then
      anagramtest()

    elsif !choice.start_with?("Ana", "ana", "Pali", "pali") then
      puts "Please input if I should either test for an Anagram or a Palindrome."
      choicemethod()

    end
  end

  ######################################################################################################################

  choicemethod()
end
