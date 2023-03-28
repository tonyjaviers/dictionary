require_relative '../lib/sequences'

RSpec.describe Sequences do
  let(:sequences) { Sequences.new }

  describe '#add_word' do
    it 'adds unique sequences from the word to the sequences set' do
      word = 'carrots'
      sequences.add_word(word)

      expect(sequences.set).to include('carr', 'arro', 'rrot', 'rots')
      expect(sequences.set).not_to include('carro', 'c', 'rr', 'rotsy')
    end

    it 'does not add sequences from words that have already been added' do
      word1 = 'carrots'
      word2 = 'rots'
      sequences.add_word(word1)
      sequences.add_word(word2)

      expect(sequences.set).to include('carr', 'arro', 'rrot', 'rots')
      expect(sequences.set).not_to include('carro', 'c', 'rr', 'rotsy')
    end
  end
end
