class Launch 
  attr_reader :name, 
              :date, 
              :location_name,
              :location_url,
              :agency,
              :rocket_name
              
  def initialize(data)
    @name = data[:name]
    @date = data[:net]
    @rocket_name = data[:rocket][:name]
  end
end 

