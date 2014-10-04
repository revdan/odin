ALPHABET = ("a".."z").to_a.freeze

def caesar_cipher(string, distance)
  shifted = ALPHABET.rotate(distance)
  string.downcase.chars.collect { |c| ALPHABET.include?(c) ? shifted[ALPHABET.index(c)] : c }.join.capitalize
end

puts caesar_cipher("What a string!", 5)
