require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todos_index_url
    assert_response :success
  end

  test "should get detile" do
    get todos_detile_url
    assert_response :success
  end

end
