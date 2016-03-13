class VisitorsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @visitor = Visitor.new(visitor_params)
    respond_to do |format|
      if @visitor.save
        format.html {
         redirect_to #index,
         flash[:notice] = "Thank you for sharing"
        }
      else
        format.html {
         redirect_to #index,
         flash[:alert] = "error"
        }
      end
    end
  end


  private
  def visitor_params
    params.require(:visitor).permit(:name,:event_last,:event_interested,:email,:school, :event_next, :event_favourite, :comments)
  end

end
