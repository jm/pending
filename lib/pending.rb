module Test
  module Unit
    class TestCase
      # The pending method lets you define a block of test code that is currently "pending"
      # functionality.
      #
      # You can use it two ways.  One is simply put a string as the parameter:
      #
      #   def test_web_service_integration
      #     pending "This is not done yet..."
      #   end
      #
      # This will output a "P" in the test output alerting there is pending functionality.
      #
      # You can also supply a block of code:
      #
      #   def test_new_helpers
      #     pending "New helpers for database display" do
      #       output = render_record(User.first)
      #       assert_equal "Jerry User (jerry@users.com)", output
      #     end
      #   end
      #
      # If the block doesn't fail, then the test will flunk with output like:
      #
      #   <New helpers for database display> did not fail.
      #
      # If the test fails (i.e., the functionality isn't implemented), then it will
      # not fail the surrounding test.
      #
      def pending(description = "", &block)
        if block_given?
          failed = false

          begin
            block.call
          rescue
            failed = true
          end

          flunk("<#{description}> did not fail.") unless failed 
        end
        
        print "P"
      end
    end
  end
end