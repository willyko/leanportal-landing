class VisitorsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @visitor = Visitor.new
  end

  def new
  end

  def create
    @visitor = Visitor.new(visitor_params)
    respond_to do |format|
      if @visitor.save
        format.html {
         #flash[:notice] = "Thank you for sharing"
         render :index
        }
        format.js {
          flash.now[:notice] = "Thank you for sharing!!!!"
          render action: 'create'
          #render json: @visitor, status: :created, location: @visitor
        }
      else
        format.html {
         #flash[:alert] = "Error submitting"
         render :index
        }
        format.js {
          render action: 'create'
        }
      end
    end
  end


  private
  def visitor_params
    params.require(:visitor).permit(:name,:event_last,:email,:school, :event_next, :event_favourite, :comments)
  end

end
