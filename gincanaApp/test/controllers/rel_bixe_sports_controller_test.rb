require 'test_helper'

class RelBixeSportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rel_bixe_sport = rel_bixe_sports(:one)
  end

  test "should get index" do
    get rel_bixe_sports_url
    assert_response :success
  end

  test "should get new" do
    get new_rel_bixe_sport_url
    assert_response :success
  end

  test "should create rel_bixe_sport" do
    assert_difference('RelBixeSport.count') do
      post rel_bixe_sports_url, params: { rel_bixe_sport: {  } }
    end

    assert_redirected_to rel_bixe_sport_url(RelBixeSport.last)
  end

  test "should show rel_bixe_sport" do
    get rel_bixe_sport_url(@rel_bixe_sport)
    assert_response :success
  end

  test "should get edit" do
    get edit_rel_bixe_sport_url(@rel_bixe_sport)
    assert_response :success
  end

  test "should update rel_bixe_sport" do
    patch rel_bixe_sport_url(@rel_bixe_sport), params: { rel_bixe_sport: {  } }
    assert_redirected_to rel_bixe_sport_url(@rel_bixe_sport)
  end

  test "should destroy rel_bixe_sport" do
    assert_difference('RelBixeSport.count', -1) do
      delete rel_bixe_sport_url(@rel_bixe_sport)
    end

    assert_redirected_to rel_bixe_sports_url
  end
end
