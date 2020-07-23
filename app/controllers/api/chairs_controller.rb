class Api::ChairsController < ApplicationController


  def index
    @chairs = Chair.all
    render "index.html.erb"
    # render "index.json.jb"
  end

  def show
    @chair = Chair.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @chair = Chair.new(
      color: params[:color],
      weight: params[:weight], 
      legs: params[:legs], 
      style: params[:style]
    )
    @chair.save
    redirect_to "/api/chairs/#{@chair.id}"
  end


  def edit
    @chair = Chair.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @chair = Chair.find_by(id: params[:id])
    @chair.color = params[:color]
    @chair.weight = params[:weight]
    @chair.legs = params[:legs]
    @chair.style = params[:style]
    @chair.save
    redirect_to "/api/chairs"
  end

  def destroy
    @chair = Chair.find_by(id: params[:id])
    @chair.destroy
    
    redirect_to "/api/chairs"
  end

end
