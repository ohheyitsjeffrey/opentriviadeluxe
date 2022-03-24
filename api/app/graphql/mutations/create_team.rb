module Mutations
  class CreateTeam < BaseMutation

    argument :attributes, Attributes::CreateTeamAttributes, required: true

    field :team, Types::TeamType, null: false

    def resolve(attributes:)
      team = Team.create name: attributes.name, game_id: attributes.game_id

      if team.valid?
        {team: team}
      else
        raise_error_for! team
      end
    end
  end
end
