require 'test_helper'

class InformersControllerTest < ActionController::TestCase
  setup do
    @informer = informers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informer" do
    assert_difference('Informer.count') do
      post :create, informer: { fname: @informer.fname, lname: @informer.lname }
    end

    assert_redirected_to informer_path(assigns(:informer))
  end

  test "should show informer" do
    get :show, id: @informer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informer
    assert_response :success
  end

  test "should update informer" do
    patch :update, id: @informer, informer: { fname: @informer.fname, lname: @informer.lname }
    assert_redirected_to informer_path(assigns(:informer))
  end

  test "should destroy informer" do
    assert_difference('Informer.count', -1) do
      delete :destroy, id: @informer
    end

    assert_redirected_to informers_path
  end
end
