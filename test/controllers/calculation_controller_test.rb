require "test_helper"

class CalculationControllerTest < ActionDispatch::IntegrationTest
  fixtures :metrics

  test "Calculation average per minute specific result" do
    get "/calculation?averageperminute=true"
    assert_equal "\"20.0\"", @response.body
  end

  test "Calculation average per hour specific result" do
    get "/calculation?averageperhour=true"
    assert_equal "\"15.0\"", @response.body
  end

  test "Calculation average per day specific result" do  
    get "/calculation?averageperday=true"
    assert_equal "\"11.66666666666667\"", @response.body
  end

  test "Calculation average per minute" do
    get "/calculation?averageperminute=true"
    assert_response :success
    assert_equal 200, status
  end

  test "Calculation average per hour" do
    get "/calculation?averageperhour=true"
    assert_response :success
    assert_equal 200, status
  end

  test "Calculation average per day" do  
    get "/calculation?averageperday=true"
    assert_response :success
    assert_equal 200, status
  end
end
