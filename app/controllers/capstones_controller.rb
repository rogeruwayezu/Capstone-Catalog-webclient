class CapstonesController < ApplicationController

  def index
    @students = Unirest.get("http://localhost:3000/studdents.json").body
    @capstones = Unirest.get("http://localhost:3000/capstones.json").body
  end
  
  def show
    @student = Unirest.get("http://localhost:3000/studdents/#{params[:id]}.json").body
    @capstone = Unirest.get("http://localhost:3000/capstones/#{params[:id]}.json").body
  end
  
end
