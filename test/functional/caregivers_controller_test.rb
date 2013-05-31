require 'test_helper'

class CaregiversControllerTest < ActionController::TestCase
  setup do
    @caregiver = caregivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caregivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caregiver" do
    assert_difference('Caregiver.count') do
      post :create, caregiver: { description: @caregiver.description }
    end

    assert_redirected_to caregiver_path(assigns(:caregiver))
  end

  test "should show caregiver" do
    get :show, id: @caregiver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caregiver
    assert_response :success
  end

  test "should update caregiver" do
    put :update, id: @caregiver, caregiver: { description: @caregiver.description }
    assert_redirected_to caregiver_path(assigns(:caregiver))
  end

  test "should destroy caregiver" do
    assert_difference('Caregiver.count', -1) do
      delete :destroy, id: @caregiver
    end

    assert_redirected_to caregivers_path
  end
end
