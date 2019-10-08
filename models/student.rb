class Student 
    attr_reader :name, :grade 
    @@all = [] 
    def initialize(params)
        @name = params[:name]
        @grade = params[:grade]
        @@all << self 
    end

    def self.all 
        @@all 
    end
end