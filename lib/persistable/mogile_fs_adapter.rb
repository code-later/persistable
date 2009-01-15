require 'mogilefs'

module Persistable
  class MogileFSAdapter
    
    attr_reader :mogile_fs_class, :connection
    
    private :connection
    
    def initialize(options = {})
      hosts = options[:tracker].is_a?(String) ? [options[:tracker]] : options[:tracker]
      @connection = MogileFS::MogileFS.new(:domain => options[:domain], :hosts => hosts)
      @mogile_fs_class = options[:class]
    end
    
    def write(persistable)
      connection.store_file(persistable.persistence_key, mogile_fs_class, persistable.persistence_data)
    end
    
    def read(persistable)
      persistable.persistence_data = StringIO.new(connection.get_file_data(persistable.persistence_key))
    end
    
  end
end