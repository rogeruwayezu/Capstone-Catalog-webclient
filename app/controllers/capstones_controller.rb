class CapstonesController < ApplicationController

  def index
    @capstones = Unirest.get("http://localhost:3000/capstones.json", headers:{"Accept"=>"application/json"}).body
  end

  def show
    @capstone = Unirest.get("http://localhost:3000/capstones/#{params[:id]}.json", headers:{"Accept"=>"application/json", "Authorization"=>"Token token=#{}", "X-User-Email"=>""}).body
  end
  
end
