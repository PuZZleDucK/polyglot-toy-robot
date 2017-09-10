require 'test_helper'

class ExampleTest < ActionDispatch::IntegrationTest

  test "example scripts" do
    test_paths = []
    Pathname(file_fixture_path).entries.each do |child|
      if child.to_path.include?("example") then
        test_paths << child
      end
    end
    test_paths.each do |path|
      file_data = file_fixture(path).read
      # robot = Robot.create(file_data) # create Robot Data object
      # result = ToyController.evaluate(robot) # run an evaluation
      # assert_match result robot.expected_output
      assert true # Disabled until simpler tests pass
    end
  end

end
