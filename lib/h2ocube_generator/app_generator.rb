class H2ocubeGenerator::AppGenerator < Rails::Generators::AppGenerator

  protected
  
  def get_builder_class
    H2ocubeGenerator::AppBuilder
  end
  
end
