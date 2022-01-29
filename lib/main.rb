$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'file_worker'

file_worker = FileWorker.new
file_names = file_worker.get_file_names

if file_names.size == 0
  abort "Directory is empty!"
end

hashes = file_worker.get_hashes(file_names)

if hashes.empty?
  abort "Something wrong"
end

puts hashes



# 1) Чтение название файлов и запись их в массив
# 2) получить хэши по списку файлов
# 3) Пройтись по массиву хэшей

