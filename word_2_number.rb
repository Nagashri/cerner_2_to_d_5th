# Example:
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

raise 'Need to pass a phrase' if ARGV.length.zero?

NUMBERS = %w(zero one two three four five six seven eight nine)

def word_2_number(phrase)
  phrase.split.map do |word|
    if word =~ /[^a-z]/i
      punctuation = word.slice(/[^a-z]/i)
      no_extra = word.chop
      if NUMBERS.include?(no_extra)
        NUMBERS.index(no_extra).to_s + punctuation
      else
        word
      end
    elsif NUMBERS.include?(word)
      NUMBERS.index(word)
    else
      word
    end
  end.join(' ')
end

puts word_2_number(ARGV[0])
#cerner_2^5_2020
