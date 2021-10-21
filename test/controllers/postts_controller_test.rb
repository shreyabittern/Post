require 'test_helper'

class PosttsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postt = postts(:one)
  end

  test "should get index" do
    get postts_url
    assert_response :success
  end

  test "should get new" do
    get new_postt_url
    assert_response :success
  end

  test "should create postt" do
    assert_difference('Postt.count') do
      post postts_url, params: { postt: { description: @postt.description, name: @postt.name } }
    end

    assert_redirected_to postt_url(Postt.last)
  end

  test "should show postt" do
    get postt_url(@postt)
    assert_response :success
  end

  test "should get edit" do
    get edit_postt_url(@postt)
    assert_response :success
  end

  test "should update postt" do
    patch postt_url(@postt), params: { postt: { description: @postt.description, name: @postt.name } }
    assert_redirected_to postt_url(@postt)
  end

  test "should destroy postt" do
    assert_difference('Postt.count', -1) do
      delete postt_url(@postt)
    end

    assert_redirected_to postts_url
  end
end
