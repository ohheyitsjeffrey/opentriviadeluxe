# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :prompt, null: false
      t.text :correct_answer
      t.integer :order, null: false, index: { unique: [:game_id] }
      t.references :game, null: false
      t.timestamps
    end
  end
end
