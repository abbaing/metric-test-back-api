require "test_helper"

class MetricsControllerTest < ActionDispatch::IntegrationTest
  fixtures :metrics

  test "Metric controller get all" do
    get "/metrics"
    assert_response :success
    assert_equal 200, status
  end

  test "Metric controller add" do  
    post "/metrics",
      params: { metric: :one }
    assert_response :success
    assert_equal 200, status
  end
  
end
