require "test_helper"

class TaggableTest < ActiveSupport::TestCase
  test "should belong to a post with translated error message" do
    error_message = I18n.t('activerecord.errors.messages.blank')
    
    I18n.with_locale(:en) do
      taggable = Taggable.new
      taggable.valid?
      assert_includes taggable.errors[:post], error_message
    end

    I18n.with_locale(:pt) do
      taggable = Taggable.new
      taggable.valid?
      assert_includes taggable.errors[:post], error_message
    end
  end

  test "should belong to a tag with translated error message" do
    error_message = I18n.t('activerecord.errors.messages.blank')
    
    I18n.with_locale(:en) do
      taggable = Taggable.new
      taggable.valid?
      assert_includes taggable.errors[:tag], error_message
    end

    I18n.with_locale(:pt) do
      taggable = Taggable.new
      taggable.valid?
      assert_includes taggable.errors[:tag], error_message
    end
  end
end