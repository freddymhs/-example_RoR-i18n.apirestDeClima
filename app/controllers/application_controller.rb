
class ApplicationController < ActionController::API
# crear un controlador
# en que pagina aprender
# https://www.youtube.com/watch?v=KqkvEmnO-k8
## creo mi proyecto con --api
# crear mi scaffold manualmente = rails g scaffold Wather locale:string degress:integer wind_speed:integer
# rails db:create
# rails db:migrate
end

# Weather


  # def index
  #   output = {'foo' => 'bar'}.to_json
  #   render :json => output
  # end

# requisitos
# POST /weather/temperature  
#      body{
#      locale:'es' or 'en',
#      degress: numero requerido
#      }
#
# If the required parameter `degrees` is missing, then the server should return the status code 422
#
# POST /weather/wind
#      body{
#      locale:'es' or 'en',
#      wind_speed: numero requerido
#      }
# If the required parameter `wind_speed` is missing, then the server should return the status code 422.

# /
  # def index
  #   output = {'foo' => 'bar'}.to_json
  #   render :json => output
  # end
###########################################################################################
  # primer crear la ruta
  # crear _controller
  
