module DynamicSelect
  class ModelsController < ApplicationController
    respond_to :json

    def index
      @models = Model.where(:brand_id => params[:brand_id])
      respond_with(@models)
    end
  end
end