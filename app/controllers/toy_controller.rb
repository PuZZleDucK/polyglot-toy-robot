class ToyController < ApplicationController

  def self.evaluate robot
    return 'Toy Robot Usage: ./bin/rails runner "ToyController.evaluate_file" <toy-script.toy>'
  end

  def self.evaluate_file file
    robot = Robot.from_file(file)
    evaluate robot
  end

end
