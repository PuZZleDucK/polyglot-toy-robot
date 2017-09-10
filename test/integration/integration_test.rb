require 'test_helper'

class IntegrationTest < ActionDispatch::IntegrationTest

  test "data created and controller executes" do
    blank_robot = Robot.create(input_script: "", expected_output: "")
    assert_match ToyController.evaluate(blank_robot), 'Toy Robot Usage: ./bin/rails runner "ToyController.run_function" <toy-script.toy>'
  end

end
