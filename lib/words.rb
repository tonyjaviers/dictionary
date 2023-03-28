module Words
    def self.get_words(sequence, words)
      # Given a sequence and a list of words, returns the words that contain the sequence.
      words.select { |word| word.downcase.include?(sequence) }
    end
end
  