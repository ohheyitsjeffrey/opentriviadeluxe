module Types
  class GameType < BaseObject
    field :name, String, null: false
    field :join_code, String, null: false
  end
end
