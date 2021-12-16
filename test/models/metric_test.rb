require "test_helper"

class MetricTest < ActiveSupport::TestCase
  test "should not save metric without name" do
    metric = Metric.new
    assert_not metric.save
  end
  test "should not save metric without value" do
    metric = Metric.new
    metric.name = "Test 1"
    assert_not metric.save
  end
  test "save metric with all values" do
    metric = Metric.new
    metric.name = "Test 1"
    metric.value = "120"
    metric.time = DateTime.now
    assert metric.save
  end
end