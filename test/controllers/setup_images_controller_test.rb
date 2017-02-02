require 'test_helper'

class SetupImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setup_image = setup_images(:one)
  end

  test "should get index" do
    get setup_images_url
    assert_response :success
  end

  test "should get new" do
    get new_setup_image_url
    assert_response :success
  end

  test "should create setup_image" do
    assert_difference('SetupImage.count') do
      post setup_images_url, params: { setup_image: { image: @setup_image.image, setup_id: @setup_image.setup_id } }
    end

    assert_redirected_to setup_image_url(SetupImage.last)
  end

  test "should show setup_image" do
    get setup_image_url(@setup_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_setup_image_url(@setup_image)
    assert_response :success
  end

  test "should update setup_image" do
    patch setup_image_url(@setup_image), params: { setup_image: { image: @setup_image.image, setup_id: @setup_image.setup_id } }
    assert_redirected_to setup_image_url(@setup_image)
  end

  test "should destroy setup_image" do
    assert_difference('SetupImage.count', -1) do
      delete setup_image_url(@setup_image)
    end

    assert_redirected_to setup_images_url
  end
end
