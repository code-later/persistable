$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'persistable/fs_adapter'
require 'persistable/memory_adapter'
require 'persistable/mogile_fs_adapter'
require 'persistable/factory'
require 'active_support/core_ext/hash' # for symbolize_keys

module Persistable
  VERSION = "0.4.1"
end