require 'test_helper'

class BazingasControllerTest < ActionController::TestCase
  setup do
    @bazinga = bazingas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bazingas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bazinga" do
    assert_difference('Bazinga.count') do
      post :create, bazinga: { description: @bazinga.description, num_followers: @bazinga.num_followers, title: @bazinga.title }
    end

    assert_redirected_to bazinga_path(assigns(:bazinga))
  end

  test "should show bazinga" do
    get :show, id: @bazinga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bazinga
    assert_response :success
  end

  test "should update bazinga" do
    patch :update, id: @bazinga, bazinga: { description: @bazinga.description, num_followers: @bazinga.num_followers, title: @bazinga.title }
    assert_redirected_to bazinga_path(assigns(:bazinga))
  end

  test "should destroy bazinga" do
    assert_difference('Bazinga.count', -1) do
      delete :destroy, id: @bazinga
    end

    assert_redirected_to bazingas_path
  end
end
