require 'openssl'

class FileWorker
  def get_file_names(path = '../data/')
    Dir.glob("#{path}*")
  end

  def get_hashes(file_names)
    data = File.read(file_names)
    sha256 = OpenSSL::Digest::SHA256.new
    digest = sha256.digest(data)
    puts digest
  end
end
