class CreateObstracles < ActiveRecord::Migration[6.0]
  def change
    create_table :obstracles do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
