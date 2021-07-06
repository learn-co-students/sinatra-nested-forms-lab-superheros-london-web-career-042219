class Team 
    attr_reader :name, :motto

    @@all = []

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @@all << self
    end

    def self.all 
        @@allß
    end


end