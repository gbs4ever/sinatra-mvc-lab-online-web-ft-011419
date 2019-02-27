class PigLatinizer
  attr_reader  :phrase

def piglatinize_sen(sen)
  sen.split.collect { |word| piglatinize_word(word) }.join(" ")
end
def piglatinize(phrase)
  if phrase.split(" ").length == 1
    piglatinize_word(phrase)
  else
    piglatinize_sen(phrase)
  end
end



def piglatinize_word(word)
  vowels = %w[a e i o u I E O A U]
  consonants = ('a'..'z').to_a + ('A'..'Z').to_a   - vowels

  return word + "way" if vowels.include?(word[0])
    if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
end




  #  if consonants.include?(str[0..2])
   #  word= str[3..-1] + str[0..2] + "ay"
   # elsif consonants.include?(str[0..1])
   #word= str[2..-1] + str[0..1] + "ay"
   # else #consonants.include?(str[0])
   #word =str[1..-1] + str[0] + "ay"
   #meg method
   # def piglatinize(words)
    #words.scan(/[a-z]+/i).map do |word|
    # if word.slice(0).match(/[aeiou]/i)
      #  word << "way"
      #elsif word.slice(1).match(/[aeiou]/i)
       # word << word.slice!(0) + "ay"
      #elsif word.slice(2).match(/[aeiou]/i)
       # word << word.slice!(0, 2) + "ay"
      #else
       # word << word.slice!(0, 3) + "ay"
      #end
    #end.join(" ")
  #end


end
