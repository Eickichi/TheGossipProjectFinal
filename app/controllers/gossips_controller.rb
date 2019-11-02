class GossipsController < ApplicationController
  def index
  end

  def show
    @user = params[:id]
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], author_id: User.all.sample.id)   
    if @gossip.save
      redirect_to root_path
    else 
      render :new
    end
  end
end
