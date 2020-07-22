class Api::ChairsController < ApplicationController


  def index
    @chairs = Chair.all
    render "index.html.erb"
    # render "index.json.jb"
  end

end
