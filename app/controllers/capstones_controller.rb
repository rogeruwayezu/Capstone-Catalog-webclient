class CapstonesController < ApplicationController

  def index
    @students = Unirest.get("http://localhost:3000/api/v2/students.json", headers:{"Accept"=>"application/json"}).body
    @capstones = Unirest.get("http://localhost:3000/api/v2/capstones.json", headers:{"Accept"=>"application/json"}).body

  end

  def show
    @capstone = Unirest.get("http://localhost:3000/api/v2/capstones/#{params[:id]}.json", headers:{"Accept"=>"application/json"}).body
    @student = Unirest.get("http://localhost:3000/api/v2/students/#{params[:id]}.json", headers:{"Accept"=>"application/json"}).body
    
  end
  
end
