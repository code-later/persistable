require "test_helper"

class FactoryTest < Test::Unit::TestCase

  def test_should_build_filesystem_adapter_from_yml
    yml_file_name = "adapter.yml"
    Persistable::Factory.expects(:load_yml).with(yml_file_name, {}).returns({:adapter => {:type => "filesystem"}})
    persistable = Persistable::Factory.build(yml_file_name, {})
    assert_kind_of Persistable::FSAdapter, persistable
  end
  
  def test_should_build_memory_adapter_from_yml
    yml_file_name = "adapter.yml"
    Persistable::Factory.expects(:load_yml).with(yml_file_name, {}).returns({:adapter => {:type => "memory"}})
    persistable = Persistable::Factory.build(yml_file_name, {})
    assert_kind_of Persistable::MemoryAdapter, persistable
  end

  def test_should_build_mogilefs_adapter_from_yml
    yml_file_name = "adapter.yml"
    Persistable::Factory.expects(:load_yml).with(yml_file_name, {}).returns({:adapter => {:type => "mogilefs", :tracker => "tracker1:6001", :class => "foo", :domain => "bar"}})
    persistable_adapter = mock("persistable_adapter")
    Persistable::MogileFSAdapter.expects(:new).with({:tracker => "tracker1:6001", :class => "foo", :domain => "bar"}).returns(persistable_adapter)
    persistable = Persistable::Factory.build(yml_file_name, {})
    assert_equal persistable_adapter, persistable
  end

  def test_should_load_yml_from_filename
    File.expects(:exists?).returns(true)
    mock_hash = mock("MockHash")
    mock_hash.expects(:symbolize_keys).returns({})
    YAML.expects(:load_file).with("adapter.yml").returns(mock_hash)
    Persistable::Factory.load_yml("adapter.yml")
  end
  
  def test_should_just_return_defaults_in_load_yml_if_file_does_not_exist
    file_mock = mock("File_mock")
    File.expects(:exists?).returns(false)
    defaults = mock("Defaults")
    loaded_config = Persistable::Factory.load_yml("adapter.yml", defaults)
    assert_equal defaults, loaded_config
  end
  
  def test_should_build_adapter_from_defaults
    defaults = mock("defaults")
    Persistable::Factory.expects(:load_yml).with(nil, defaults).returns({:adapter => {:type => "memory"}})
    Persistable::Factory.build(nil, defaults)
  end
  
  def test_build_should_raise_exception_if_wrong_parameter
    Persistable::Factory.expects(:load_yml).with("file_path", {}).returns(:wrong => :hash)
    assert_raise(ArgumentError) { Persistable::Factory.build("file_path") }
    Persistable::Factory.expects(:load_yml).with("file_path", {}).returns(:adapter => {:no_type => "but_adapter"})
    assert_raise(ArgumentError) { Persistable::Factory.build("file_path") }
  end
end