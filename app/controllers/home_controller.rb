class HomeController < ApplicationController
  def index
    @gossip = Gossip.all.order(created_at: :desc)
  end
  def show
     @user = params[:id]
     @gossip = Gossip.find(params[:id])
  end
end