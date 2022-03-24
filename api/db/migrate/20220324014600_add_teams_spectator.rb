# frozen_string_literal: true

class AddTeamsSpectator < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :spectator, :boolean, null: false, default: true, index: true
  end
end
