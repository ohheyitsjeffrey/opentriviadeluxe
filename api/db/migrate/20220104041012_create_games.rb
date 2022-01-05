class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :join_code, index: true, null: false
      t.integer :status, null: false, default: 0, index: true

      t.timestamps
    end
  end
end
