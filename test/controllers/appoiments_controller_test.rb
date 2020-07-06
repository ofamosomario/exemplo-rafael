require 'test_helper'

class AppoimentsControllerTest < ActionController::TestCase
  setup do
    @appoiment = appoiments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appoiments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appoiment" do
    assert_difference('Appoiment.count') do
      post :create, appoiment: { appoiment: @appoiment.appoiment, patient_id: @appoiment.patient_id, physician_id: @appoiment.physician_id }
    end

    assert_redirected_to appoiment_path(assigns(:appoiment))
  end

  test "should show appoiment" do
    get :show, id: @appoiment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appoiment
    assert_response :success
  end

  test "should update appoiment" do
    patch :update, id: @appoiment, appoiment: { appoiment: @appoiment.appoiment, patient_id: @appoiment.patient_id, physician_id: @appoiment.physician_id }
    assert_redirected_to appoiment_path(assigns(:appoiment))
  end

  test "should destroy appoiment" do
    assert_difference('Appoiment.count', -1) do
      delete :destroy, id: @appoiment
    end

    assert_redirected_to appoiments_path
  end
end
