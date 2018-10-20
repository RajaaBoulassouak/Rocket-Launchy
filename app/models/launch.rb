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
    @location_name = data[:location][:pads].first[:name]
    @location_url = data[:location][:pads].first[:mapURL]
    @rocket_name = data[:rocket][:name]
  end
end 

