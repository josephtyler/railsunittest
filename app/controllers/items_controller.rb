class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    #@options = Option.all :conditions => { :item_id => params[:id] }
		@options = Option.where( item_id: params[:id] ).to_a
    #@options[:price] = @options[:price_in_cents].to_i / 100
  end

  # POST /items
  # POST /items.json
  def create

    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        # If everything was saved properly, create options for this item
        #format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.html { redirect_to controller: 'options', action: 'new', for_item: @item.id }
        format.json { render action: 'show', status: :created, location: @item }
        #redirect_to :controller => 'options', :action => 'new'
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
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
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url }
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
      params.require(:item).permit(:name)
    end
end
