require_relative '../lib/words'

describe Words do
  describe ".write_to_file" do
    context "when given an array of words and a file path" do
      let(:words) { ["carrots", "give", "arrows"] }
      let(:file_path) { "output/words.txt" }

      before do
        Words.write_to_file(words, file_path)
      end

      it "writes each word to a separate line in the file" do
        file_contents = File.read(file_path)
        expect(file_contents).to eq("carrots\ngive\narrows\n")
      end
    end
  end
end
