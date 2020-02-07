class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :difficulty
      t.references :resolution, null: false, foreign_key: true

      t.timestamps
    end
  end
end
