class Project 
  
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer                #backer arg added to the Project backers array
    backer.backed_projects << self  #backer arg .Backer- backed projects array adds self
    #@backed_projects << backer.self
  end
  
end