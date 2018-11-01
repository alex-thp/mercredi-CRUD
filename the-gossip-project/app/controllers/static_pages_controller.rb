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
  end
  #helper_method :create
end
