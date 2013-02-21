require 'test_helper'

class ArmasControllerTest < ActionController::TestCase
  setup do
    @arma = armas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arma" do
    assert_difference('Arma.count') do
      post :create, arma: { descricao: @arma.descricao, marca: @arma.marca, modelo: @arma.modelo }
    end

    assert_redirected_to arma_path(assigns(:arma))
  end

  test "should show arma" do
    get :show, id: @arma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arma
    assert_response :success
  end

  test "should update arma" do
    put :update, id: @arma, arma: { descricao: @arma.descricao, marca: @arma.marca, modelo: @arma.modelo }
    assert_redirected_to arma_path(assigns(:arma))
  end

  test "should destroy arma" do
    assert_difference('Arma.count', -1) do
      delete :destroy, id: @arma
    end

    assert_redirected_to armas_path
  end
end
