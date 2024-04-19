require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should belong to a user with translated error message" do
    error_message = I18n.t('activerecord.errors.messages.blank')
    
    I18n.with_locale(:en) do
      post = Post.new
      post.valid?
      assert_includes post.errors[:user], error_message
    end

    I18n.with_locale(:pt) do
      post = Post.new
      post.valid?
      assert_includes post.errors[:user], error_message
    end
  end
end