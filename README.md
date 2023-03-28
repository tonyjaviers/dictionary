The project consists of the following files:

lib/main.rb: The main file that reads in the dictionary file and creates the two output files.
lib/sequences.rb: A file that contains a function to extract sequences of length 4 from a word.
lib/file_io.rb: A module with two methods to read and write files.
spec/main_spec.rb: A file with tests for the main program.
spec/sequences_spec.rb: A file with tests for the sequences.rb file.
spec/file_io_spec.rb: A file with tests for the file_io.rb module.
Requirements
Ruby 2.6 or higher
RSpec gem installed
How to run
Clone the repository.
Install the RSpec gem by running gem install rspec.
Run rspec spec to run the tests and ensure everything is working correctly.
Run the program by running ruby lib/main.rb. The output files (sequences.txt and words.txt) will be created in the output directory.
