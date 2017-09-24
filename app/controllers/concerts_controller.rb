class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
  end
end
