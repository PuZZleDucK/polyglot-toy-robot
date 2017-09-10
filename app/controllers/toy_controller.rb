class ToyController < ApplicationController

  def self.evaluate robot
    x, y, facing = -1, -1, ""
    output = 'Toy Robot Usage: ./bin/rails runner "ToyController.evaluate_file" <toy-script.toy>'
    if robot.input_script.split("\n").count >= 1 then
      output = ""
    end
    robot.input_script.split("\n").each do |script_line|
      case script_line.split[0]
      when "PLACE"
        x, y, facing = place(script_line.split[1])
      when "MOVE"
        move()
        puts "----MOVE"
      when "LEFT"
        left()
        puts "----LEFT"
      when "RIGHT"
        right()
        puts "----RIGHT"
      when "REPORT"
        if facing != "" then
          output += "#{x},#{y},#{facing}"
        end
      end
    end
    return output
  end


  def self.place place_data
    place_x, place_y, place_facing = place_data.split(",")
    place_x, place_y = place_x.to_i, place_y.to_i
    if place_x > -1 && place_x < 5 && place_y > -1 && place_y < 5 && ["NORTH", "EAST", "SOUTH", "WEST"].include?(place_facing) then
      return place_x, place_y, place_facing
    else
      return -1, -1, ""
    end
  end

  def self.move
  end

  def self.left
  end

  def self.right
  end

  def self.evaluate_file file
    robot = Robot.from_file(file)
    evaluate robot
  end

end
