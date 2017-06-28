require 'test_helper'
require 'rails/performance_test_help'

class UserTest < ActionDispatch::PerformanceTest
    fixtures :users

  # Refer to the documentation for all available options
  self.profile_options = { runs: 5, metrics: [:wall_time, :memory, :process_time, :objects] }
                        #    output: 'tmp/performance', formats: [:flat] }

  def setup
    @user_created = User.create name: users(:two).name,
                  email: users(:two).email,
                  password: users(:two).password
  end

  test "add User" do
    User.create name: users(:one).name,
                  email: users(:one).email,
                  password: users(:one).password
  end

  test "update User" do
    # user = User.find(name: users(:two).name)
    @user_created.update name: users(:one).name,
                  email: users(:one).email,
                  password: users(:one).password
  end

  test "delete User" do
    @user_created.delete
  end



end
