class Robot < ApplicationRecord

  def self.from_text text
    input, sep, output = text.partition(/expected\ output:/i)
    robot = Robot.create(input_script: input.strip, expected_output: output.strip)
  end

end
