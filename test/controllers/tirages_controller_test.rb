require 'test_helper'

class TiragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tirage = tirages(:one)
  end

  test "should get index" do
    get tirages_url
    assert_response :success
  end

  test "should get new" do
    get new_tirage_url
    assert_response :success
  end

  test "should create tirage" do
    assert_difference('Tirage.count') do
      post tirages_url, params: { tirage: { date_tirage: @tirage.date_tirage, t_exp1: @tirage.t_exp1, t_exp2: @tirage.t_exp2, t_num1: @tirage.t_num1, t_num2: @tirage.t_num2, t_num3: @tirage.t_num3, t_num4: @tirage.t_num4, t_num5: @tirage.t_num5 } }
    end

    assert_redirected_to tirage_url(Tirage.last)
  end

  test "should show tirage" do
    get tirage_url(@tirage)
    assert_response :success
  end

  test "should get edit" do
    get edit_tirage_url(@tirage)
    assert_response :success
  end

  test "should update tirage" do
    patch tirage_url(@tirage), params: { tirage: { date_tirage: @tirage.date_tirage, t_exp1: @tirage.t_exp1, t_exp2: @tirage.t_exp2, t_num1: @tirage.t_num1, t_num2: @tirage.t_num2, t_num3: @tirage.t_num3, t_num4: @tirage.t_num4, t_num5: @tirage.t_num5 } }
    assert_redirected_to tirage_url(@tirage)
  end

  test "should destroy tirage" do
    assert_difference('Tirage.count', -1) do
      delete tirage_url(@tirage)
    end

    assert_redirected_to tirages_url
  end
end
