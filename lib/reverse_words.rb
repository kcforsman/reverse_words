# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words == nil
  length = my_words.length
  word_start = 0
  word_length = 0
  while word_start < length
    if my_words[word_start] == " "
      word_start += 1
      word_length +=1
    elsif word_length == length || my_words[word_length] == " "
      word_end = word_length - 1
      while word_start < word_end
        early_char = my_words[word_start]
        my_words[word_start] = my_words[word_end]
        my_words[word_end] = early_char
        word_start += 1
        word_end -= 1
      end
      word_start = word_length + 1
      word_length += 1
    else
      word_length += 1
    end
  end
end
