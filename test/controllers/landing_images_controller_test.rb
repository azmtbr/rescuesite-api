require 'test_helper'

class LandingImagesControllerTest < ActionController::TestCase
  setup do
    @landing_image = landing_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landing_images)
  end

  test "should create landing_image" do
    assert_difference('LandingImage.count') do
      post :create, landing_image: {  }
    end

    assert_response 201
  end

  test "should show landing_image" do
    get :show, id: @landing_image
    assert_response :success
  end

  test "should update landing_image" do
    put :update, id: @landing_image, landing_image: {  }
    assert_response 204
  end

  test "should destroy landing_image" do
    assert_difference('LandingImage.count', -1) do
      delete :destroy, id: @landing_image
    end

    assert_response 204
  end
end
