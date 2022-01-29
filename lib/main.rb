$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'file_worker'
require 'finder'

file_worker = FileWorker.new
file_names = file_worker.get_file_names

if file_names.size == 0
  abort 'Directory is empty!'
end

hashes = file_worker.get_hashes(file_names)

if hashes.empty?
  abort 'Something wrong'
end

finder = Finder.new(hashes)
doubles = finder.find_doubles

if doubles.empty?
  abort 'Something wrong'
end


doubles.each { |_, value|
  if value.size != 0
    puts '================='
    puts 'Doubles:'
    value.each { |item|
      puts item
    }
  end
}

