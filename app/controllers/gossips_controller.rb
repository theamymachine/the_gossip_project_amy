class GossipsController < ApplicationController
  def id
    params[:id]
  end

  def méthode
    @gossip = Gossip.find(params[:title])
  end

end
