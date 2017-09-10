class ToyController < ApplicationController
  def self.evaluate robot
    return 'Toy Robot Usage: ./bin/rails runner "ToyController.run_function" <toy-script.toy>'
  end
end
