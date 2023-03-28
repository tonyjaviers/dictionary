require_relative '../lib/main'

describe '#main' do
  before do
    # Create test dictionary file
    File.write('test_dictionary.txt', "arrows\n18th\ncarrots\ngive\nme\nIsn't\n")
  end

  after do
    # Remove test dictionary file and output files
    File.delete('test_dictionary.txt')
    File.delete('sequences.txt')
    File.delete('words.txt')
  end

  it 'generates expected output files' do
    # Call main function
    main()

    # Read output files
    sequences = File.readlines('sequences.txt').map(&:strip)
    words = File.readlines('words.txt').map(&:strip)

    # Check output
    expect(sequences).to match_array(['carr', 'give', 'rots', 'rows', 'rrot', 'rrow'])
    expect(words).to match_array(['carrots', 'give', 'carrots', 'arrows', 'carrots', 'arrows'])
  end
end
