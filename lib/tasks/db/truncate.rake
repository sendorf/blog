namespace :db do

  desc "Cleans the database completely (with DatabaseCleaner), preserves structure"
    task :truncate => :environment do
      puts("Cleaning up whole database...")
      DatabaseCleaner.clean_with(:truncation) if defined? DatabaseCleaner
  end
  namespace :truncate do

    desc "Cleans the db's posts (with DatabaseCleaner), preserves structure"
    task :posts => :environment do
      puts("Cleaning up contacts...")
      DatabaseCleaner.clean_with(:truncation) if defined? DatabaseCleaner

    end
    desc "Cleans the db's comments (with DatabaseCleaner), preserves structure"
    task :comments => :environment do
      puts("Cleaning up comments...")
      DatabaseCleaner.clean_with(:truncation, :only => [:comments]) if defined? DatabaseCleaner

    end
  end
end