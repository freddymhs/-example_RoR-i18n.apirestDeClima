class WeatherController < ApplicationController
before_action :set_default_locale
  
  def set_default_locale
      params[:locale] == "" ?  "en" : 
      params[:locale] == "es" ?
      I18n.locale  = "es" :
      I18n.locale = "en"
  end

  def index
    render :json => I18n.t('.msg').to_json
  end


  # mis rutas
  def temperature
    if(params[:degrees].blank?)
    # basic variables
    render status: 422
    else
      temp = params[:degrees].to_i
       if(temp >= 0 )
      render :json =>  {"description":I18n.t('.temperature.above_zero', degrees: temp)},status:200
      end
      if(temp < 0)
      render :json => {"description":I18n.t('.temperature.below_zero', degrees: temp*-1)},status:200
      end 
    end
  end
  

  def wind
    if(params[:wind_speed].blank?)
    # basic variables
    render status: 422
    else
      speed = params[:wind_speed].to_i
      if(speed >= 20 )
      render :json =>  {"description":I18n.t('.wind.strong')},status:200
      elsif (speed < 3)
      render :json =>  {"description":I18n.t('.wind.none')},status:200
      elsif (speed < 8)
      render :json =>  {"description":I18n.t('.wind.weak')},status:200
      elsif (speed < 20)
      render :json =>  {"description":I18n.t('.wind.medium')},status:200
      end
    end
  end



 def clouds
    if(params[:clouds].blank?)
    # basic variables
    render status: 422
    else
      cloud = params[:clouds].to_i
      if(cloud <= 10 )
      render :json =>  {"description":I18n.t('.clouds.none')},status:200
      elsif (cloud <= 70)
      render :json =>  {"description":I18n.t('.clouds.partial')},status:200
      elsif (cloud > 70)
      render :json =>  {"description":I18n.t('.clouds.full')},status:200
      end
    end
  end






end