# frozen_string_literal: true

class GreetingsController < ApplicationController
  # GET /greetings
  def index
    @greeting = Greeting.find(Greeting.pluck(:id).sample)
    render json: @greeting
  end
end
