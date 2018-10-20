class LaunchSearch 
  
  def initialize
    
  end 
  
  def launches 
    conn = Faraday.new(:url => "https://launchlibrary.net") do |faraday|
      faraday.adapter Faraday.default_adapter 
    end
  
    response = conn.get("/1.4/launch/next/100")
    data = JSON.parse(response.body, symbolize_names: true)
    data[:launches].map do |raw_launch|
      Launch.new(raw_launch)
    end
  end
end 