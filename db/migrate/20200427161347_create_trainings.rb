class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.datetime :date
      t.string :completed
      t.float :time
      t.string :benefit
      t.belongs_to :course, null: false, foreign_key: true
      t.belongs_to :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
