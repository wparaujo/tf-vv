require 'test_helper'
require 'rails/performance_test_help'

class ProductTest < ActionDispatch::PerformanceTest
  fixtures :users
  fixtures :products


  # Refer to the documentation for all available options
  self.profile_options = { runs: 5, metrics: [:wall_time, :memory, :process_time, :objects] }


  def setup
    # setup user
    @user_created = User.create name: users(:two).name,
                  email: users(:two).email,
                  password: users(:two).password

    #setup product
    @product_created = Product.create name: products(:two).name,
                            description: products(:two).description

    #linking user to products
    @user_created.products << @product_created
  end




  test 'add product' do
    Product.create name: products(:one).name,
                description: products(:one).description
  end


  test 'update product' do
    @product_created.update name: products(:one).name,
                description: products(:one).description
  end

  test 'delete product' do
    @product_created.delete
  end


end
