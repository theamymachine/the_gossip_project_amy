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
      redirect_to static_pages_home_path
    else 
      render 'new'
    end
  end

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

end
