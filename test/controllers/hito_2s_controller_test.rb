require "test_helper"

class Hito2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hito_2 = hito_2s(:one)
  end

  test "should get index" do
    get hito_2s_url
    assert_response :success
  end

  test "should get new" do
    get new_hito_2_url
    assert_response :success
  end

  test "should create hito_2" do
    assert_difference("Hito2.count") do
      post hito_2s_url, params: { hito_2: { name: @hito_2.name, user_id: @hito_2.user_id } }
    end

    assert_redirected_to hito_2_url(Hito2.last)
  end

  test "should show hito_2" do
    get hito_2_url(@hito_2)
    assert_response :success
  end

  test "should get edit" do
    get edit_hito_2_url(@hito_2)
    assert_response :success
  end

  test "should update hito_2" do
    patch hito_2_url(@hito_2), params: { hito_2: { name: @hito_2.name, user_id: @hito_2.user_id } }
    assert_redirected_to hito_2_url(@hito_2)
  end

  test "should destroy hito_2" do
    assert_difference("Hito2.count", -1) do
      delete hito_2_url(@hito_2)
    end

    assert_redirected_to hito_2s_url
  end
end
