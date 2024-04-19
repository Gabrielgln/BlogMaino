require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "should belong to a post with translated error message" do
    error_message = I18n.t('activerecord.errors.messages.blank')
    
    I18n.with_locale(:en) do
      comment = Comment.new
      comment.valid?
      assert_includes comment.errors[:post], error_message
    end

    I18n.with_locale(:pt) do
      comment = Comment.new
      comment.valid?
      assert_includes comment.errors[:post], error_message
    end
  end
end
