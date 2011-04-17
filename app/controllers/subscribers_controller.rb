class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(:email => params[:subscriber][:email])
    if @subscriber.save
      flash[:notice] = "Merci, vous avez bien été inscript(e) !"
    else
      flash[:error] = "Il y a eu un problème lors de votre inscription. Soit l'email que vous avez entré (#{params[:subscriber][:email]}) n'est pas valide, soit vous êtes déjà inscript(e)."
    end
    redirect_to "/"
  end

  def index
  end

end
