class Finder
  def initialize(hashes)
    @hashes = hashes
  end

  def find_doubles
    find
  end

  private
  def find
    @doubles = {}
    @hashes.each do |file_name, hash|
      files_with_uniq_hash = []
      @hashes.each do |file_name_2, hash_2|
        if file_name == file_name_2
          next
        end

        if hash == hash_2
          files_with_uniq_hash.append(file_name, file_name_2)
        end
      end
      @doubles[hash] = files_with_uniq_hash.uniq
    end
    return @doubles
  end
end
