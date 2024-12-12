require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test "should be valid with title, and content" do
    blog = Blog.new(title: "Testing Blog", content: "Blogs content")
    assert blog.valid?
  end

  test "should not be valid without title" do
    blog = Blog.new(content: "Blog content", state: "published")
    refute blog.valid?
  end

  test "should not be valid without content" do
    blog = Blog.new(title: "Testing blog", state: "draft")
    refute blog.valid?
  end
end
