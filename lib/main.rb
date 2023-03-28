require 'set'
require 'benchmark'
require_relative 'sequences'
require_relative 'words'
require_relative 'file_io'



DICTIONARY_FILE = 'input/dictionary.txt'.freeze
SEQUENCES_FILE = 'output/sequences.txt'.freeze
WORDS_FILE = 'output/words.txt'.freeze

def main()
    # Read dictionary file
    words = FileIO.read_lines(DICTIONARY_FILE)

    time = Benchmark.realtime do
        # Create a hash to keep track of sequences and how many times they appear
        sequence_counts = Hash.new(0)
        word_sequences = Hash.new { |hash, key| hash[key] = [] }
        words.each do |word|
            sequences = Sequences.get_sequences(word)
            sequences.each do |sequence|
                sequence_counts[sequence] += 1
                word_sequences[sequence] << word
            end
        end

        # Write sequences and corresponding words to output files
        FileIO.write_lines(SEQUENCES_FILE, WORDS_FILE) do |f_sequences, f_words|
            sequence_counts.each do |sequence, count|
                if count == 1
                    words = word_sequences[sequence]
                    f_sequences.puts sequence
                    f_words.puts words[0]
                end
            end
        end
    end
    puts "Execution time: #{time} seconds"
end

if __FILE__ == $0
  main()
end
