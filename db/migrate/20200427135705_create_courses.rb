class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :description
      t.string :location
      


      t.timestamps
    end
  end
end
