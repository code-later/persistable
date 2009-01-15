module Persistable
  class MemoryAdapter
    
    # Options are not used in this case, but we implement the constructor
    # header in the same way the other adapters implement it.
    def initialize(options = {})
      @storage = {}
    end
    
    def write(persistable)
      @storage[persistable.persistence_key] = persistable.persistence_data
    end
    
    def read(persistable)
      persistable.persistence_data = @storage[persistable.persistence_key]
    end
    
    def delete(persistable)
      @storage.delete(persistable.persistance_key)
    end
    
  end
end