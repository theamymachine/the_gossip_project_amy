class StaticPageController < ApplicationController  
  def home
    @gossips = Gossip.all
  end 
end