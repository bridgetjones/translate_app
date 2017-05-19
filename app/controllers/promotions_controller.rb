class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:show, :edit, :update, :destroy, :send_all_messages]
  before_action :require_logged_in


  # GET /promotions
  # GET /promotions.json
  def index
    @promotions = current_shop_owner.promotions.all
  end

  # GET /promotions/1
  # GET /promotions/1.json
  def show
  end

  # GET /promotions/new
  def new
    @promotion = current_shop_owner.promotions.new
  end

# only get the notes that belong to current shop owner logged in this sesion

  # GET /promotions/1/edit
  def edit
  end

  # POST /promotions
  # POST /promotions.json
  def create
    @promotion = current_shop_owner.promotions.new(promotion_params.merge(customer_ids: customer_ids))
  
    # @promotion.translate(@promotion.body)

# make notes that belong to the current shop owner
    respond_to do |format|
      if @promotion.save
        format.html { redirect_to shop_owner_promotion_path(current_shop_owner,@promotion), notice: 'Promotion was successfully created.' }
        # send_text.promotion
        format.json { render :show, status: :created, location: @promotion }
      else
        format.html { render :new }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotions/1
  # PATCH/PUT /promotions/1.json
  def update
    respond_to do |format|
      if @promotion.update(promotion_params)
        format.html { redirect_to shop_owner_promotion_path(current_shop_owner,@promotion), notice: 'Promotion was successfully updated.' }
        format.json { render :show, status: :ok, location: @promotion }
      else
        format.html { render :edit }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotions/1
  # DELETE /promotions/1.json
  def destroy
    @promotion.destroy
    respond_to do |format|
      format.html { redirect_to shop_owner_promotions_path(current_shop_owner), notice: 'Promotion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def send_all_messages
    @promotion.send_all
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
      @promotion = current_shop_owner.promotions.find(params[:id])
    end
# only find notes of current shop owner logged in
    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_params
      params.require(:promotion).permit(:english_promo, :body, :send_time)
    end

    def customer_ids
      params[:customer].require(:id).select &:present?
    end
end
# dont permit shop owner id as parameter

# params.require(:promotion).permit(:shop_owner_id, :english_promo, :body) original
