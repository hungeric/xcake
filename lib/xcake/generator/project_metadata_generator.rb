module Xcake
  class ProjectMetadataGenerator < Generator
    def visit_project(project)
      puts 'Creating Project...'

      native_project = @context.native_object_for(project)
      native_project.class_prefix = project.class_prefix if project.class_prefix
      native_project.organization = project.organization if project.organization
    end
  end
end
