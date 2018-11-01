class StaticPagesController < ApplicationController
 
  def home
    "hello"
  end

  def new
    
  end

  def create
    gossip = Gossip.new
    gossip.user_id = $u
    gossip.anonymous = params["anonymous"]
    gossip.title = params["title"]
    gossip.content = params["content"]
    gossip.save
    u = gossip.id
    redirect_to "/show/#{u}"
  end
  #helper_method :create
end
