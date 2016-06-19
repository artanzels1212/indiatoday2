require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { add_product: @product.add_product, approx_price: @product.approx_price, created_by: @product.created_by, deleted_by: @product.deleted_by, min_order_quantity: @product.min_order_quantity, product_desc: @product.product_desc, product_group: @product.product_group, product_name: @product.product_name, top_5: @product.top_5, unit_type: @product.unit_type, updated_by: @product.updated_by, user_id: @product.user_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { add_product: @product.add_product, approx_price: @product.approx_price, created_by: @product.created_by, deleted_by: @product.deleted_by, min_order_quantity: @product.min_order_quantity, product_desc: @product.product_desc, product_group: @product.product_group, product_name: @product.product_name, top_5: @product.top_5, unit_type: @product.unit_type, updated_by: @product.updated_by, user_id: @product.user_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
