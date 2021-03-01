class Backer
attr_reader :name, :project 
    def initialize (name)
        @name = name 

    end 

    def back_project (project)

        ProjectBacker.new(project, self)

    end

    def backed_projects

       project_backer_array = ProjectBacker.all.select {|this_instance|this_instance.backer == self}

       project_backer_array.map{|pba| pba.project}

    end

end 