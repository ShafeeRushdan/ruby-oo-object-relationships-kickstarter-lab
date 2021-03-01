class Project
    attr_reader :title, :backer
    def initialize (title)
        @title = title
    end

    def add_backer (backer)
        ProjectBacker.new(self,backer)
    end

    def backers 
        backers_array = ProjectBacker.all.select {|deez| deez.project == self}

        backers_array.map{|b| b.backer}
    end

end 


