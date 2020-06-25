class Backer
  
  attr_accessor :name 
  attr_reader :backed_projects 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @backed_projects = [] 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def back_project(project_name)
    @backed_projects << project_name 
    project_name.backers << self 
  end 
end 