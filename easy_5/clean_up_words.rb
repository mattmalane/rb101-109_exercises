ALPHABET = ('a'..'z').to_a

def cleanup(str)
  clean_chars = []

  str.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end
cleanup("---what's my +*& line?") == ' what s my line '