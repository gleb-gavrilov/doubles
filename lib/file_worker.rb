class FileWorker
  def get_file_names(path = '../data/')
    files = Dir.glob("#{path}*")
  end
end
