require 'test_helper'

class MemoryAdapterTest < Test::Unit::TestCase
  
  def test_should_write_persistable_objects
    adapter = Persistable::MemoryAdapter.new
    
    persistable_object = mock("Persistable")
    persistable_object.expects(:persistance_key).returns("42")
    persistable_object.expects(:persistance_data).returns(StringIO.new("The answer to all questions."))
    
    adapter.write(persistable_object)
    
    assert_equal "The answer to all questions.", adapter.instance_variable_get("@storage")["42"].read
  end

  def test_should_read_persistable_objects
    adapter = Persistable::MemoryAdapter.new

    test_io_object = StringIO.new("The answer to all questions.")
    adapter.instance_variable_set("@storage", {"42" => test_io_object})
    
    persistable_object = mock("Persistable")
    persistable_object.expects(:persistance_key).returns("42")
    persistable_object.expects(:persistance_data=).with(test_io_object)
    
    adapter.read(persistable_object)
  end
  
end