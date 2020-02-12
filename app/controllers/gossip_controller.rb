class GossipController < ApplicationController

  def index show
  end 

  def show
  end 

  def new
    @gossip = Gossip.new(title: params[:title],content: params[:content])
  end

  def create 
    @gossip = Gossip.new(user: User.last, title: params[:title],content: params[:content])
    if @gossip.save
      redirect_to static_pages_home_path, notice: "Tu as crée un nouveau potin."
    else 
      render 'new'
      flash.alert = "Il y a un problème, recommence"
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
      flash.alert = "Il y a un problème, recommence"
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    if @gossip.destroy
      redirect_to static_pages_home_path
    else
      render :edit
      flash.alert = "Il y a un problème, recommence"
    end
  end

  private 

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end 

end
 