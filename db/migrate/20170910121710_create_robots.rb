class CreateRobots < ActiveRecord::Migration[5.0]
  def change
    create_table :robots do |t|
      t.text :input_script
      t.text :expected_output

      t.timestamps
    end
  end
end
