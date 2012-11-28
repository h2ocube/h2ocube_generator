class H2ocubeGenerator::AppBuilder < Rails::AppBuilder
  def readme
    template 'README.md.erb', 'README.md'
  end
  
  def gemfile
    template 'Gemfile.erb', 'Gemfile'
  end
  
  def database_yml
    template 'config/mongoid.yml.erb', 'config/mongoid.yml'
  end
  
  def config
    empty_directory 'config'

    inside 'config' do
      template 'routes.rb'
      template 'application.rb.erb', 'application.rb'
      template 'environment.rb'

      empty_directory 'environments'
      
      inside 'environments' do
        template 'development.rb.erb', 'development.rb'
        template 'test.rb.erb', 'test.rb'
        template 'production.rb.erb', 'production.rb'
      end
      
      directory 'initializers'
      directory 'locales'
    end
  end
end
