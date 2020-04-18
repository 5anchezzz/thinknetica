alphabet = ('a'..'z').to_a
vowel = ['a', 'e', 'i', 'o', 'u', 'y']
my_hash = {}

alphabet.each do |letter|
  if vowel.include? letter
    my_hash[letter] = alphabet.index(letter) + 1
  end
end