class PigLatinizer
  attr_reader  :phrase 
def intilaze(phrase)
  @phrase = phrase 
end

def piglatinize(str)
 # phrase.split(" ")
  vowels = %w[a e i o u I E]
  consonants = ('a'..'z').to_a - vowels
  return str + "way" if vowels.include?(str[0])
  if consonants.include?(str[0])
     return str[2..-1] + str[0..1] + "ay" if consonants.include?(str[1])
     return str[1..-1] + str[0] + "ay"
  end
  str 
end


end  