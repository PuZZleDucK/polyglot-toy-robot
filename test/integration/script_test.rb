require 'test_helper'

class ScriptTest < ActionDispatch::IntegrationTest

  test "test scripts" do
    test_paths = []
    Pathname(file_fixture_path).entries.each do |child|
      if child.to_path.include?("test") then
        test_paths << child
      end
    end
    test_paths.each do |path|
      puts "Test: #{path}"
      robot = Robot.from_text(file_fixture(path).read) # create Robot Data object
      eval_result = ToyController.evaluate(robot) # run an evaluation
      puts " EVAL: #{eval_result}"
      puts " EXPECT: #{robot.expected_output}"
      assert_match robot.expected_output, eval_result
    end
  end

end
