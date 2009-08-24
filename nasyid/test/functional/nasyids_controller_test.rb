require 'test_helper'

class NasyidsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nasyids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nasyid" do
    assert_difference('Nasyid.count') do
      post :create, :nasyid => { }
    end

    assert_redirected_to nasyid_path(assigns(:nasyid))
  end

  test "should show nasyid" do
    get :show, :id => nasyids(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => nasyids(:one).to_param
    assert_response :success
  end

  test "should update nasyid" do
    put :update, :id => nasyids(:one).to_param, :nasyid => { }
    assert_redirected_to nasyid_path(assigns(:nasyid))
  end

  test "should destroy nasyid" do
    assert_difference('Nasyid.count', -1) do
      delete :destroy, :id => nasyids(:one).to_param
    end

    assert_redirected_to nasyids_path
  end
end
