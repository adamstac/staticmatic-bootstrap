ssh_user = "user@domain.com" # for rsync deployment
remote_root = "~/path/to/remote/" # for rsync deployment

namespace :styles do
  
  desc "Clears the styles"
  task :clear do
    puts "*** Clearing styles ***"
    system "rm -Rfv site/stylesheets/*"
  end
  
  desc "Generates new styles"
  task :generate => :clear do
    puts "*** Generating styles ***"
    system "compass"
  end
  
end

namespace :site do
  
  desc "Runs preview"
  task :preview do
    system "staticmatic preview ."
  end
  
  desc "Builds the site"
  task :build => 'styles:clear' do
    puts "*** Building the site ***"
    system "staticmatic build ."
  end
  
  desc "Clears the styles, generates new styles, builds the site, and finally deploys the site"
  task :deploy => :build do
    puts "*** Deploying the site ***"
    system("rsync -avz --delete site/ #{ssh_user}:#{remote_root}")
  end
  
end