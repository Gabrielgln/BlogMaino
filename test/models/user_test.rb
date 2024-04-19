require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "email validation message should be translated" do
    error_message = I18n.t('validation.invalide_email')
    
    I18n.with_locale(:en) do
      user = User.new(email: "invalid_email")
      user.valid?
      assert_equal error_message, user.errors[:email].first
    end

    I18n.with_locale(:pt) do
      user = User.new(email: "invalid_email")
      user.valid?
      assert_equal error_message, user.errors[:email].first
    end
  end
end

