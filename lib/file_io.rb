module FileIO
    def self.read_lines(file_name)
      File.readlines(file_name).map(&:strip)
    end
  
    def self.write_lines(file_name_1, file_name_2)
      File.open(file_name_1, 'w') do |f1|
        File.open(file_name_2, 'w') do |f2|
          yield(f1, f2)
        end
      end
    end
end
  