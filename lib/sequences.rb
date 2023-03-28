require 'set'

module Sequences
  def self.get_sequences(word)
    # Given a word, returns a set of unique sequences of length 4.
    sequences = Set.new
    (0..(word.length - 4)).each do |i|
      sequence = word[i, 4].downcase.gsub(/[^a-z]/, '')
      sequences.add(sequence) if sequence.length == 4
    end
    sequences
  end
end
