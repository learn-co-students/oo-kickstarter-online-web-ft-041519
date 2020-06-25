class Project
  attr_reader :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if !@backers.include?(backer)
      @backers << backer
      backer.back_project(self)
    end
  end
end
