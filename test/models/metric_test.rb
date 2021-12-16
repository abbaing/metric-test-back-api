require "test_helper"

class MetricTest < ActiveSupport::TestCase
  test "should not save metric without name" do
    metric = Metric.new
    assert_not metric.save
  end
end
