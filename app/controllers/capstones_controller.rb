class CapstonesController < ApplicationController

  def index

    @capstones = Unirest.get("http://localhost:3000/capstones.json", headers:{"Accept"=>"application/json"}).body
  end
    
     @capstones = Unirest.get("#{ENV['DOMAIN']}/capstones.json", headers:{"Accept"=>"application/json"}).body
   end

  def show
    @capstone = Unirest.get("#{ENV['DOMAIN']}/capstones/#{params['id'].to_i}.json", headers:{"Accept"=>"application/json"}).body
    render :show
  end
end
