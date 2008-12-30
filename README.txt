pending
    by Jeremy McAnally
    http://jeremymcanally.com

== DESCRIPTION:

pending lets you define a block of test code that is currently "pending" functionality,
similar to RSpec's pending method.

== FEATURES/PROBLEMS:

* A pending method to let you define pending test code

== SYNOPSIS:

The pending method lets you define a block of test code that is currently "pending"
functionality.

You can use it two ways.  One is simply put a string as the parameter:

  def test_web_service_integration
    pending "This is not done yet..."
  end

This will output a "P" in the test output alerting there is pending functionality.

You can also supply a block of code:

  def test_new_helpers
    pending "New helpers for database display" do
      output = render_record(User.first)
      assert_equal "Jerry User (jerry@users.com)", output
    end
  end

If the block doesn't fail, then the test will flunk with output like:

  <New helpers for database display> did not fail.

If the test fails (i.e., the functionality isn't implemented), then it will
not fail the surrounding test.

== REQUIREMENTS:

* Test::Unit

== INSTALL:

  sudo gem install pending

== LICENSE:

(The MIT License)

Copyright (c) 2008 FIXME (different license?)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
