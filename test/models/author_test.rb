require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  def setup
    @author = Author.new(name: "Example Author", image: "xxx.jpg")
  end

  test "should be valid" do
    assert @author.valid?
  end

end
