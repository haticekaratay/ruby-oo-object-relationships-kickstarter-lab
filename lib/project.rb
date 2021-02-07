require 'pry'

class Project
    attr_reader :title
   
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end 
    
    def backers
        project_backer_of_itself  =ProjectBacker.all.select{|project_backer| project_backer.project == self}
        backers = project_backer_of_itself.collect{|project_backers| project_backers.backer}
        #binding.pry
    end

end