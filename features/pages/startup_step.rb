class Startup
  include HTTParty
  base_uri('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm')

  def initialize
      @body = { 
        "nome":"#{FFaker::Name.name}", 
        "cidade": "#{FFaker::AddressBR.state_abbr}" 
      }
  end

  def create_startup
    body = JSON.generate(@body)
    self.class.post("/startup", :body => body)
  end

  def get_all_startup
    self.class.get("/startup")
  end

  def delete_startup
    if $postid == nil
      raise "Este cenario depende do id gerado no cenario @post"
    else
      self.class.delete("/startup/#{@postid}")
    end
  end

  def delete_all_startup
    # execute with caution
    i = response.count - 1
    ids = []

    while i != 0 do
      ids.push(response[i]["id"])
      i -= 1
    end

    ids.each do |i|
      delete_response = HTTParty.delete("http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup/#{i}")
      sleep 5
      puts "#{delete_response.code}"
    end
  end
end