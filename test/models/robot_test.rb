require 'test_helper'

class RobotTest < ActiveSupport::TestCase
  test "blank robot" do
    blank_robot = Robot.from_text("")
    assert_match blank_robot.input_script, ""
    assert_match blank_robot.expected_output, ""
  end

  test "normal robot" do
    normal_robot = Robot.from_text("PLACE 0,0,NORTH\n\nExpected output:\n\n0,0,NORTH")
    assert_match "PLACE 0,0,NORTH", normal_robot.input_script
    assert_match "0,0,NORTH", normal_robot.expected_output
  end

end
