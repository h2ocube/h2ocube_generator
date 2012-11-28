require 'rails/generators'
require 'rails/generators/rails/app/app_generator'

module H2ocubeGenerator
end

Dir[File.dirname(__FILE__) + '/h2ocube_generator/*.rb'].each{ |f| require f }
