class FileWorker
  def get_file_list(path)
    files = Dir.glob('*')
    puts files.class
  end
end
