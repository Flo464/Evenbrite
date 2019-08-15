class EventController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title],
     description: params[:description], price: params[:price], location: params[:location]) 
  end

  def create

  	@event = Event.create(start_date: params[:start_date], duration: params[:duration], title: params[:title],
     description: params[:description], price: params[:price], location: params[:location])

  	if @event.save 
  		redirect_to root_path
  	else 
  		render new_event_path
  	end
  end 

  def destroy
  	
  end


end
