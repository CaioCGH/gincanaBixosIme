require 'test_helper'

class BixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bix = bixes(:one)
  end

  test "should get index" do
    get bixes_url
    assert_response :success
  end

  test "should get new" do
    get new_bix_url
    assert_response :success
  end

  test "should create bix" do
    assert_difference('Bixe.count') do
      post bixes_url, params: { bix: { course: @bix.course, is_valid: @bix.is_valid, name: @bix.name, telephone: @bix.telephone, tutor: @bix.tutor } }
    end

    assert_redirected_to bix_url(Bixe.last)
  end

  test "should show bix" do
    get bix_url(@bix)
    assert_response :success
  end

  test "should get edit" do
    get edit_bix_url(@bix)
    assert_response :success
  end

  test "should update bix" do
    patch bix_url(@bix), params: { bix: { course: @bix.course, is_valid: @bix.is_valid, name: @bix.name, telephone: @bix.telephone, tutor: @bix.tutor } }
    assert_redirected_to bix_url(@bix)
  end

  test "should destroy bix" do
    assert_difference('Bixe.count', -1) do
      delete bix_url(@bix)
    end

    assert_redirected_to bixes_url
  end
end
