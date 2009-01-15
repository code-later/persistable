module Persistable
  class FSAdapter
    
    attr_reader :storage_location
    
    def initialize(options = {})
      @storage_location = options[:storage_location] || "/tmp"
    end
    
    def write(persistable)
      File.open("#{storage_location}/#{persistable.persistence_key}", "w") do |file|
        file.puts persistable.persistence_data.read
      end
    end
    
    def read(persistable)
      puts "location: #{storage_location}/#{persistable.persistence_key}"
      if File.exists?(path = "#{storage_location}/#{persistable.persistence_key}")
        persistable.persistence_data = File.open(path)
      end
    end
    
  end
end