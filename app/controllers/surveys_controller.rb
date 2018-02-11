class SurveysController < ApplicationController
  def index
  end
  def post
    session[:survey] = survey_params
    redirect_to '/result'
  end
  def result
    if session[:counter].nil?
      session[:counter] = 0
      @counter = session[:counter]
      @session = session[:survey]
    else
      session[:counter] += 1
      @counter = session[:counter]
      @session = session[:survey]
    end
  end
  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
