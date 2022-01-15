namespace :ci_test do
  task :greetings => :environment do
    puts "greetings!"
  end

  task :greetings_lite do
    puts "greetings! (no environment)"
  end
end
