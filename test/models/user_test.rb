# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'Foo', email: 'foo@gmail.com', password: '123', admin: false)
  end

  test 'username should be valid' do
    assert @user.valid?
  end

  test 'username should not be empty' do
    @user.name = ' '
    assert_not @user.valid?
  end

  test 'username should not be long' do
  end

  test 'username should not be too short' do
  end

  test 'email should be unique' do
  end

  test 'case6' do
  end
end
