class LikeController < ApplicationController
  def create
  	gossip = Gossip.find(params["id"])
  	gossip.like = $u
  end

  def update
  	l = Like.new
  	l.user_id = $u
    l.gossip_id = params["id"]
    l.save
  end

  def destroy
  	like = Like.all
  	like.each do |l|
    if (l.user_id == $u && l.gossip_id == params["id"])
     l.destroy
    end
    end
  end
end