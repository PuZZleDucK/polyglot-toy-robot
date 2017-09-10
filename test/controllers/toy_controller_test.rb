require 'test_helper'

class ToyControllerTest < ActionDispatch::IntegrationTest
  test "evaluating nothing returns usage" do
    blank_robot = Robot.create(input_script: "", expected_output: "")
    result = ToyController.evaluate(blank_robot)
    assert_match result, 'Toy Robot Usage: ./bin/rails runner "ToyController.run_function" <toy-script.toy>'
  end
end
