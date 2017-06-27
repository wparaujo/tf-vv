require 'test_helper'
require 'rails/performance_test_help'

class UserTest < ActionDispatch::PerformanceTest
    fixtures :users

  # Refer to the documentation for all available options
  self.profile_options = { runs: 5, metrics: [:wall_time, :memory, :process_time, :objects] }
                        #    output: 'tmp/performance', formats: [:flat] }

  # test "add User" do
  #   post_via_redirect '/users/new', name: users(:one).name,
  #                       email: users(:one).email,
  #                       password: users(:one).password,
  #                       password_confirmation: users(:one).password_confirmation
  # end

  test "add User" do
    User.create name: users(:one).name,
                  email: users(:one).email,
                  password: users(:one).password,
                  password_confirmation: users(:one).password_confirmation
  end

end
