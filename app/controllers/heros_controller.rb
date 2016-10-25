class HerosController < ApplicationController

  def index
    heros = Hero.all()
    render :json => heros.as_json(
      except: [:created_at, :updated_at], 
      include: {films: {except: [:created_at, :updated_at]}}
      )
  end



end 