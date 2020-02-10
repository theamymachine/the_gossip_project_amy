class GossipController < ApplicationController
  
  def id
    @gossip = Gossip.find(params[:id])
  end

end
