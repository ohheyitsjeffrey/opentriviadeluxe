
## Game

### Current
```ruby
  create_table "games", force: :cascade do |t|
    t.string "name", null: false
    t.string "join_code", null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["join_code"], name: "index_games_on_join_code"
    t.index ["status"], name: "index_games_on_status"
  end
```

### Todo

*Relationships*

- has_many :teams
- has_many :players

## Player

- Lifecycle of a single game.  Players are not persistent across games

### Todo

*Attributes*

- name
- game_id
- team_id

## Team

- Lifecycle of a single game.  Teams are not persistent across games

### Todo

*Attributes*

- name
- game_id

*Relationships*

- belongs_to :game

## Round

## ???? (Team <-> Game)

## Question

# Down the road

## Chat & related models
## Player persistence re: security (kicking, banning, etc)

## Block model

*Attributes*

- ip
- game_id

*Relationships*

- belongs_to :game


## Queries and Mutations

### Create

- game
- team
- player
- question
- submission

### Join

- player to team

### Queries

- game
- team
- player
- question
- submission

status updates for game






