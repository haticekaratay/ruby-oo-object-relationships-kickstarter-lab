require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        project_backer_of_itself = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
         project_backer_of_itself.collect{|project_instances| project_instances.project }
    #binding.pry
    end

end