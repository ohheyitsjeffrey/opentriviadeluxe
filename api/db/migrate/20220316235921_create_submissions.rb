class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.text :response
      t.integer :status
      t.references :team
      t.references :player
      t.reference :question
      t.timestamps
    end
  end
end
