module DynamicSelect
  class EnginesController < ApplicationController
    respond_to :json

    def index
      @engines = Engine.where(:model_id => params[:model_id])
      respond_with(@engines)
    end
  end
end