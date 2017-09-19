require 'test_helper'

class IdiomsControllerTest < ActionController::TestCase
  setup do
    @idiom = idioms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idioms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idiom" do
    assert_difference('Idiom.count') do
      post :create, idiom: { Country_id: @idiom.Country_id, name: @idiom.name }
    end

    assert_redirected_to idiom_path(assigns(:idiom))
  end

  test "should show idiom" do
    get :show, id: @idiom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idiom
    assert_response :success
  end

  test "should update idiom" do
    patch :update, id: @idiom, idiom: { Country_id: @idiom.Country_id, name: @idiom.name }
    assert_redirected_to idiom_path(assigns(:idiom))
  end

  test "should destroy idiom" do
    assert_difference('Idiom.count', -1) do
      delete :destroy, id: @idiom
    end

    assert_redirected_to idioms_path
  end
end
