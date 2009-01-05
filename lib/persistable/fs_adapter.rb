module Persistable
  class FSAdapter
    
    attr_reader :storage_location
    
    def initialize(options = {})
      @storage_location = options[:storage_location] || "/tmp"
    end
    
    def write(persistable)
      File.open("#{storage_location}/#{persistable.persistance_key}", "wb") do |file|
        file.puts persistable.persistance_data.read
      end
    end
    
    def read(persistable)
      persistable.persistance_data = File.open("#{storage_location}/#{persistable.persistance_key}", "rb")
    end
    
  end
end