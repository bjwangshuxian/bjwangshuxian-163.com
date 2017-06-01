require 'test_helper'

class QishisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qishi = qishis(:one)
  end

  test "should get index" do
    get qishis_url
    assert_response :success
  end

  test "should get new" do
    get new_qishi_url
    assert_response :success
  end

  test "should create qishi" do
    assert_difference('Qishi.count') do
      post qishis_url, params: { qishi: { order_id: @qishi.order_id, phone: @qishi.phone, salary: @qishi.salary } }
    end

    assert_redirected_to qishi_url(Qishi.last)
  end

  test "should show qishi" do
    get qishi_url(@qishi)
    assert_response :success
  end

  test "should get edit" do
    get edit_qishi_url(@qishi)
    assert_response :success
  end

  test "should update qishi" do
    patch qishi_url(@qishi), params: { qishi: { order_id: @qishi.order_id, phone: @qishi.phone, salary: @qishi.salary } }
    assert_redirected_to qishi_url(@qishi)
  end

  test "should destroy qishi" do
    assert_difference('Qishi.count', -1) do
      delete qishi_url(@qishi)
    end

    assert_redirected_to qishis_url
  end
end
