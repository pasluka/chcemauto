class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @version = Version.find(params[:version_id])
    @items = Item.where(:version_id => @version.id)
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @version = Version.find(params[:version_id])
  end

  # GET /items/new
  def new
    @version = Version.find(params[:version_id])
    @item = @version.items.build
   # @item.version_id = params[:version_id]
  end

  # GET /items/1/edit
  def edit
    @version = Version.find(params[:version_id])
  end

  # POST /items
  # POST /items.json
  def create
    @version = Version.find(params[:version_id])
    @item = @version.items.build(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to version_path(@version), notice: 'Prvok bol vytvoreny.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @version = Version.find(params[:version_id])
    @item = Item.find(params[:id])
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to version_path(@version), notice: 'Prvok bol upraveny.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @version = Version.find(params[:version_id])
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to @version }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :price, :version_id)
    end
end
