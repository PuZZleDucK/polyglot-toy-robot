require 'test_helper'

class RobotTest < ActiveSupport::TestCase
  test "blank robot" do
    blank_robot = Robot.create(input_script: "", expected_output: "")
    assert_match blank_robot.input_script, ""
    assert_match blank_robot.expected_output, ""
  end
end
