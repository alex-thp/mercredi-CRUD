class ShowController < ApplicationController
  def index
  	@gossip = Gossip.all
  end
  def show
    @id = params["id"] 
  end
  def edit
  	gossip = Gossip.find(params["id"])
  	gossip.anonymous = params["anonymous"]
  	gossip.content = params["content"]
  	gossip.save
  end
  
  def create
  end

  def update
  end

  def destroy
  	gossip = Gossip.find(params["id"])
  	gossip.delete
  	redirect_to "/show"
  end
end