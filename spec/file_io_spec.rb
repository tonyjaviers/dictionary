require_relative '../lib/file_io'

describe FileIO do
  describe ".read_words" do
    context "when given a valid file path" do
      it "returns an array of all words in the file" do
        file_path = "spec/test_input.txt"
        expected_result = ["hello", "world", "this", "is", "a", "test"]
        result = FileIO.read_words(file_path)
        expect(result).to eq(expected_result)
      end
    end

    context "when given an invalid file path" do
      it "raises an error" do
        file_path = "invalid/path/to/file.txt"
        expect { FileIO.read_words(file_path) }.to raise_error(Errno::ENOENT)
      end
    end
  end

  describe ".write_sequences" do
    context "when given a valid file path and sequences" do
      it "writes the sequences to the file" do
        file_path = "spec/test_sequences.txt"
        sequences = ["abcd", "efgh", "ijkl"]
        FileIO.write_sequences(file_path, sequences)
        result = File.readlines(file_path).map(&:strip)
        expect(result).to eq(sequences)
      end
    end
  end

  describe ".write_words" do
    context "when given a valid file path and words" do
      it "writes the words to the file" do
        file_path = "spec/test_words.txt"
        words = ["hello", "world", "this", "is", "a", "test"]
        FileIO.write_words(file_path, words)
        result = File.readlines(file_path).map(&:strip)
        expect(result).to eq(words)
      end
    end
  end
end
