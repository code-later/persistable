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
      connection.store_file(persistable.persistance_key, mogile_fs_class, persistable.persistance_data)
    end
    
    def read(persistable)
      persistable.persistance_data = StringIO.new(connection.get_file_data(persistable.persistance_key))
    end
    
  end
end