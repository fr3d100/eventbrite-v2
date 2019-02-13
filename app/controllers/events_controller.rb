class EventsController < ApplicationController

	before_action :authenticate_user!
	
  def index
  end

  def show
  	@event = Event.find(params['id'])
  end

  def edit
  	@event = Event.find(params['id'])
  end


  def destroy
  	@event = Event.find(params['id'])
  	if @event.destroy
      flash[:success] = "L'événement a été supprimé"
      redirect_to root_path
    else
      flash[:danger] = "La supression n'a pas fontionné ..."
      redirect_to event_path(@event.id)
    end
  end

  def update
  	@event = Event.find(params["id"])
    event_params = params.require(:event).permit(:title, :description, :location, :started_date, :duration, :price)
    @event.update(event_params)
    redirect_to event_path(@event.id)
    flash[:success] = "L'évènement a été mis à jour"
  end

end
