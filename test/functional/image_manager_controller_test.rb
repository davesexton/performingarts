require 'test_helper'

class ImageManagerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
