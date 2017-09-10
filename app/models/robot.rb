class Robot < ApplicationRecord

  def self.from_file file

  end

  def self.from_text text
    robot = Robot.create(input_script: "", expected_output: "")
  end

end
