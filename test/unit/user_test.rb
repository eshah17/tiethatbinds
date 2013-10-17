require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a firstname" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end
  test "a user should enter a lastname" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end
  test "a user should enter a profilename" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end
  test "a user should enter a unique profilename" do
    user = User.new
    user.profile_name =  users(:Esha).profile_name
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end
  test "a user should enter a profilename without space" do
    user = User.new
    user.profile_name = "My name is esha"
    assert !user.save
    assert !user.errors[:profile_name].empty?
    assert user.errors[:profile_name].include?("No space should be added")
  end
  test "a user should enter a emailaddress" do
    user = User.new
    assert !user.save
    assert !user.errors[:email].empty?
  end
end
