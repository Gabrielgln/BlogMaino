require "test_helper"

class TagTest < ActiveSupport::TestCase
  test "should have many posts through taggables with translated error message" do
    error_message = I18n.t('activerecord.errors.messages.blank')
    
    I18n.with_locale(:en) do
      tag = Tag.new
      tag.valid?
      assert_includes tag.errors[:posts], error_message
    end

    I18n.with_locale(:pt) do
      tag = Tag.new
      tag.valid?
      assert_includes tag.errors[:posts], error_message
    end
  end
end