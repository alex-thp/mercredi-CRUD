class StaticPagesController < ApplicationController
 
  def home
    "hello"
  end

  def new

  end

  def create
    gossip = Gossip.new
    gossip.anonymous = params["anonymous"]
    gossip.title = params["title"]
    gossip.content = params["content"]
    gossip.save
    u = gossip.id
    redirect_to "/static_pages/show/#{u}"
  end

  def potin
    @id =params["id"]
  end
  #helper_method :create
end
