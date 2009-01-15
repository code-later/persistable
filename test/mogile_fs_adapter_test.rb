require 'test_helper'

class MogileFSAdapterTest < Test::Unit::TestCase
  
  def test_should_write_and_read_and_delete_persistable_objects
    adapter = Persistable::MogileFSAdapter.new(:domain => "mydomain", :tracker => "tracker.test.com:6001", :class => 'devel')
    
    data_to_persist = StringIO.new("The answer to all questions.")
    persistable_object_in = mock("PersistableIn")
    persistable_object_in.expects(:persistance_key).returns("42")
    persistable_object_in.expects(:persistance_data).returns(data_to_persist)
    
    connection_in = mock("MogileFS-Connection")
    connection_in.expects(:store_file).with("42", "devel", data_to_persist)
    adapter.expects(:connection).returns(connection_in)
    
    adapter.write(persistable_object_in)

    persistable_object_out = mock("PersistableOut")
    persistable_object_out.expects(:persistance_key).returns("42")
    persistable_object_out.expects(:persistance_data=).with() { |data| data.kind_of? StringIO }

    connection_out = mock("MogileFS-Connection")
    connection_out.expects(:get_file_data).with("42").returns(data_to_persist.read)
    adapter.expects(:connection).returns(connection_out)
    
    fetched_data = adapter.read(persistable_object_out)    
    assert_kind_of StringIO, fetched_data
    assert_equal "The answer to all questions.", fetched_data.read
    
    persistable_object_delete = mock("PersistableOut")
    persistable_object_delete.expects(:persistance_key).returns("42")
    
    connection_delete = mock("MogileFS-Connection")
    adapter.expects(:connection).returns(connection_delete)
    connection_delete.expects(:delete).with("42")
    
    adapter.delete(persistable_object_delete)
  end
  
  def test_should_set_domain_tracker_and_class
    MogileFS::MogileFS.expects(:new).with(:domain => "mydomain", :hosts => ["tracker.test.com:6001"])
    adapter = Persistable::MogileFSAdapter.new(:domain => "mydomain", :tracker => "tracker.test.com:6001", :class => 'devel')
    assert_equal "devel", adapter.mogile_fs_class
  end
  
  def test_should_set_domain_multiple_tracker_and_class
    MogileFS::MogileFS.expects(:new).with(:domain => "mydomain", :hosts => ["tracker1.test.com:6001", "tracker2.test.com:6001"])
    adapter = Persistable::MogileFSAdapter.new(:domain => "mydomain", :tracker => ["tracker1.test.com:6001", "tracker2.test.com:6001"], :class => 'devel')
    assert_equal "devel", adapter.mogile_fs_class
  end
    
end
