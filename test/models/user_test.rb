require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should validates_presence_of(:email)
  should allow_value("vmarmolejo@ucol.mx").for(:email)
  should_not allow_value("@ucol").for(:email)
end
