if Rails.env.development?
  require 'listen'
  require 'rake'

  listener = Listen.to('/trivia/app/graphql') do |_modified, _added, _removed|
    require 'graphql/rake_task'

    GraphQL::RakeTask.new(schema_name: "TriviaSchema")

    Rake::Task["graphql:schema:dump"].reenable
    Rake::Task["graphql:schema:dump"].invoke
  end

  listener.start
end
