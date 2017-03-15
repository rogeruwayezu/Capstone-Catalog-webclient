class CapstonesController < ApplicationController

  def index
<<<<<<< HEAD
    @students = Unirest.get("http://localhost:3000/api/v2/students.json", headers:{"Accept"=>"application/json"}).body
    @capstones = Unirest.get("http://localhost:3000/api/v2/capstones.json", headers:{"Accept"=>"application/json"}).body

  end

  def show
    @capstone = Unirest.get("http://localhost:3000/api/v2/capstones/#{params[:id]}.json", headers:{"Accept"=>"application/json"}).body
    @student = Unirest.get("http://localhost:3000/api/v2/students/#{params[:id]}.json", headers:{"Accept"=>"application/json"}).body
    
=======
    
     @capstones = Unirest.get("#{ENV['DOMAIN']}/capstones.json", headers:{"Accept"=>"application/json"}).body
   end

  def show
    @capstone = Unirest.get("#{ENV['DOMAIN']}/capstones/#{params['id'].to_i}.json", headers:{"Accept"=>"application/json"}).body
    render :show
>>>>>>> 9637d4c831de6c0ee056df4a0b7b6913216580e5
  end
end
