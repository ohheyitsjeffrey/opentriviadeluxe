namespace :ci_test do
  task :greetings => :environment do
    puts "greetings!"
  end
end
