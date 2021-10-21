require 'test_helper'

class NewSControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_ = new_s(:one)
  end

  test "should get index" do
    get new_s_url
    assert_response :success
  end

  test "should get new" do
    get new_new__url
    assert_response :success
  end

  test "should create new_" do
    assert_difference('New.count') do
      post new_s_url, params: { new_: { Post: @new_.Post, description: @new_.description, name: @new_.name } }
    end

    assert_redirected_to new__url(New.last)
  end

  test "should show new_" do
    get new__url(@new_)
    assert_response :success
  end

  test "should get edit" do
    get edit_new__url(@new_)
    assert_response :success
  end

  test "should update new_" do
    patch new__url(@new_), params: { new_: { Post: @new_.Post, description: @new_.description, name: @new_.name } }
    assert_redirected_to new__url(@new_)
  end

  test "should destroy new_" do
    assert_difference('New.count', -1) do
      delete new__url(@new_)
    end

    assert_redirected_to new_s_url
  end
end
