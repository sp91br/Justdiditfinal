require 'test_helper'

class DoersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doer = doers(:one)
  end

  test "should get index" do
    get doers_url
    assert_response :success
  end

  test "should get new" do
    get new_doer_url
    assert_response :success
  end

  test "should create doer" do
    assert_difference('Doer.count') do
      post doers_url, params: { doer: { bio: @doer.bio, name: @doer.name, user_id: @doer.user_id } }
    end

    assert_redirected_to doer_url(Doer.last)
  end

  test "should show doer" do
    get doer_url(@doer)
    assert_response :success
  end

  test "should get edit" do
    get edit_doer_url(@doer)
    assert_response :success
  end

  test "should update doer" do
    patch doer_url(@doer), params: { doer: { bio: @doer.bio, name: @doer.name, user_id: @doer.user_id } }
    assert_redirected_to doer_url(@doer)
  end

  test "should destroy doer" do
    assert_difference('Doer.count', -1) do
      delete doer_url(@doer)
    end

    assert_redirected_to doers_url
  end
end
