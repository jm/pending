require 'test/unit'
require File.dirname(__FILE__) + "/../lib/pending.rb"

# Quick and dirty way to test our output
class StdoutStub
  attr_accessor :text
  
  def write(text)
    @text = text
  end
end

class TestPending < Test::Unit::TestCase
  def test_output
    old = $stdout
    $> = StdoutStub.new
    pending("poop")
    
    assert_equal "P", $>.text
    $> = $stdout
  end
  
  def test_does_not_require_block
    assert_nothing_raised do
      pending("hello there")
    end
  end
  
  def test_block_allows_fail
    assert_nothing_raised do
      pending("this is awesome") do
        assert false
      end
    end
  end
  
  def test_flunk_when_no_flunk
    assert_raises(Test::Unit::AssertionFailedError) do
      pending("this is fail") do
        assert true
      end
    end
  end
  
  def test_output_of_flunk_when_no_flunk
    begin
      pending("this is fail") do
        assert true
      end
    rescue StandardError => e
      assert_equal "<this is fail> did not fail.", e.message
    end
  end
  
  def test_creates_test_method_when_called_on_self
    TestPending.pending("this test is pending") do
      assert true
    end
    
    assert TestPending.instance_methods.include?('test_this_test_is_pending')
    assert_raises(Test::Unit::AssertionFailedError) do
      send(:test_this_test_is_pending)
    end
  end

end