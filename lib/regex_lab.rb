def starts_with_a_vowel?(word)
  matched = ""
  matched = word.match(/^[aeiou]/i)

  matched == nil ? false : true
end

def words_starting_with_un_and_ending_with_ing(text)
  words = []
  words = text.scan(/un+\w+ing/)

  words
end

def words_five_letters_long(text)
  words = []

  text.scan(/\w{5,}/).each do |word|
    if word.length == 5
      words << word
    end
  end
  words
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  word = nil
  word = text.match(/[A-Z]\w+[,.!;:]/)
  word != nil ? true : false
end

def valid_phone_number?(phone)
  phone.match(/([0-9]{3}\)|(([0-9]{3}-[0-9]{4})|([0-9] *?){10}|[0-9]{7})\b)/) != nil
end
