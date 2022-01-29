require 'openssl'

class FileWorker
  def get_file_names(path = '../data/')
    Dir.glob("#{path}*")
  end

  def get_hashes(file_names)
    puts file_names.size
    if file_names.size == 0
      return {}
    end
    hashes = Hash.new
    hashes.inject
    file_names.each { |file_name|
      data = File.read(file_name)
      sha256 = OpenSSL::Digest::SHA256.new
      hashes.store(file_name, sha256.digest(data))
    }
    return hashes
  end
end
