$LOAD_PATH.unshift(File.expand_path(__dir__))

require 'file_worker'

file_worker = FileWorker.new
file_names = file_worker.get_file_names

if file_names.size == 0
  abort "Directory is empty!"
end

puts file_names.to_s

# 1) Чтение название файлов и запись их в массив
# 2) получить хэши по списку файлов
# 3) Пройтись по массиву хэшей

