class ApiController < ApplicationController
  def profile

    

    render :json => @projects, :include => :tasks
  end

  def follow
  end
end
