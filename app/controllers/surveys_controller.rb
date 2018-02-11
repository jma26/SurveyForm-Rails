class SurveysController < ApplicationController
  def index
  end
  def post
    session[:survey] = survey_params
    redirect_to '/result'
  end
  def result
    @session = session[:survey]
  end
  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
