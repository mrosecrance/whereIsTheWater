require 'test_helper'

class WhitewaterRunsControllerTest < ActionController::TestCase
  setup do
    @whitewater_run = whitewater_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whitewater_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whitewater_run" do
    assert_difference('WhitewaterRun.count') do
      post :create, whitewater_run: { description: @whitewater_run.description, name: @whitewater_run.name, whitewater_class: @whitewater_run.whitewater_class }
    end

    assert_redirected_to whitewater_run_path(assigns(:whitewater_run))
  end

  test "should show whitewater_run" do
    get :show, id: @whitewater_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whitewater_run
    assert_response :success
  end

  test "should update whitewater_run" do
    patch :update, id: @whitewater_run, whitewater_run: { description: @whitewater_run.description, name: @whitewater_run.name, whitewater_class: @whitewater_run.whitewater_class }
    assert_redirected_to whitewater_run_path(assigns(:whitewater_run))
  end

  test "should destroy whitewater_run" do
    assert_difference('WhitewaterRun.count', -1) do
      delete :destroy, id: @whitewater_run
    end

    assert_redirected_to whitewater_runs_path
  end
end
