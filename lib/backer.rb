class Backer
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project_inst)
    @backed_projects << project_inst
    project_inst.add_backer(self) unless project_inst.backers.include?(self)
  end
  
end