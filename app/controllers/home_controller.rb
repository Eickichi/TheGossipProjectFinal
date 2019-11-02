class HomeController < ApplicationController
  def index
    @gossip = Gossip.all
  end
  def show
     @user = params[:id]
     @gossip = Gossip.find(params[:id])
  end
end