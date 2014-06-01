namespace :db do

  desc "cleans the database completely (with DatabaseCleaner), and fills it up with fake data"
  task :seed => %w{
    db:truncate
    seed:prepare
    seed:posts
    seed:comments
  }

  namespace :seed do
    desc "Loads factory girl"
    task :prepare => :environment do
      puts("Loading up factory girl")
      require 'factory_girl_rails'
      require 'factory_girl'
      include FactoryGirl::Syntax::Methods
    end

    desc "Creates the default posts"
    task :posts => "seed:prepare" do
      puts("Creating posts...")

      (1..5).each do
      	post = FactoryGirl.create(:post)
      end
    end

    desc "Creates the default comments"
    task :comments => "seed:prepare" do
      puts("Creating comments...")
      posts = Post.all
      
      posts.each do |post|
      	(0..rand(5)).each do
      		FactoryGirl.create(:comment,:post_id => post.id)
      	end
      end
    end
  end
end