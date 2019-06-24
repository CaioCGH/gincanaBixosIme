require 'test_helper'

class SportInterestsNewcomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sport_interests_newcomer = sport_interests_newcomer(:one)
  end

  test "should get index" do
    get sport_interests_newcomer_url
    assert_response :success
  end

  test "should get new" do
    get new_sport_interests_newcomer_url
    assert_response :success
  end

  test "should create sport_interests_newcomer" do
    assert_difference('SportInterestsNewcomer.count') do
      post sport_interests_newcomer_url, params: { sport_interests_newcomer: {  } }
    end

    assert_redirected_to sport_interests_newcomer_url(SportInterestsNewcomer.last)
  end

  test "should show sport_interests_newcomer" do
    get sport_interests_newcomer_url(@sport_interests_newcomer)
    assert_response :success
  end

  test "should get edit" do
    get edit_sport_interests_newcomer_url(@sport_interests_newcomer)
    assert_response :success
  end

  test "should update sport_interests_newcomer" do
    patch sport_interests_newcomer_url(@sport_interests_newcomer), params: { sport_interests_newcomer: {  } }
    assert_redirected_to sport_interests_newcomer_url(@sport_interests_newcomer)
  end

  test "should destroy sport_interests_newcomer" do
    assert_difference('SportInterestsNewcomer.count', -1) do
      delete sport_interests_newcomer_url(@sport_interests_newcomer)
    end

    assert_redirected_to sport_interests_newcomer_url
  end
end
