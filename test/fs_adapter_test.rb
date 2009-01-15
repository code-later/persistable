require 'test_helper'

class FSAdapterTest < Test::Unit::TestCase
  
  def test_should_write_persistable_objects
    adapter = Persistable::FSAdapter.new
    adapter.expects(:storage_location).returns("/tmp")
    
    persistable_object = mock("Persistable")
    persistable_object.expects(:persistence_key).returns("42")
    persistable_object.expects(:persistence_data).returns(StringIO.new("The answer to all questions."))
    
    adapter.write(persistable_object)
    
    assert File.exists?("/tmp/42")
    assert_equal "The answer to all questions.\n", File.open("/tmp/42").read
  end

  def test_should_read_persistable_objects
    adapter = Persistable::FSAdapter.new
    adapter.expects(:storage_location).returns("/tmp")
    
    File.open("/tmp/just_a_file", "wb") { |file| file.puts "test" }
    just_a_file = File.open("/tmp/just_a_file", "rb")
    File.expects(:open).with("/tmp/just_a_file", "rb").returns(just_a_file)
    
    persistable_object = mock("Persistable")
    persistable_object.expects(:persistence_key).returns("just_a_file")
    persistable_object.expects(:persistence_data=).with(just_a_file)
    
    adapter.read(persistable_object)
  end
  
  def test_should_delete_persistable_objects
    adapter = Persistable::FSAdapter.new
    adapter.expects(:storage_location).times(2).returns("/tmp")
    
    persistable_object = mock("Persistable")
    persistable_object.expects(:persistance_key).times(2).returns("42")
    persistable_object.expects(:persistance_data).returns(StringIO.new("The answer to all questions."))
    
    adapter.write(persistable_object)
    
    assert File.exists?("/tmp/42")
    assert_equal "The answer to all questions.\n", File.open("/tmp/42").read
    
    adapter.delete(persistable_object)
    assert !File.exists?("/tmp/42")
  end
  
  def test_should_set_location_for_persisting_data
    adapter = Persistable::FSAdapter.new(:storage_location => "/custom/location")
    assert_equal "/custom/location", adapter.storage_location
  end
  
  def test_should_have_default_storage_location_set_to_global_tmp_dir
    adapter = Persistable::FSAdapter.new
    assert_equal "/tmp", adapter.storage_location
  end
  
end
