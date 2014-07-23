def titlecase(words)
  conjunctions = ["and", "for", "nor", "but", "or", "yet", "so"]
  split_word = words.split
  split_word.each do |word|
    if word != split_word[0] && conjunctions.include?(word)
      word.downcase!
    else
      word.capitalize!
    end
  end
  split_word.join(" ")
end

