class PurchasesController < ApplicationController

  before_filter :check_for_cancel, :only => [:create, :update]

  def index
    @purchases = Purchase.all.order(:purchased_on)
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
    1.times { @purchase.items.build }
  end

  def create
    @purchase = Purchase.new(purchase_params)

    if @purchase.save
      flash[:notice] = "Saved!"
      redirect_to purchases_path
    else
      render :new
    end
  end

  def update
    @purchase = Purchase.find(params[:id])

    if @purchase.update(purchase_params)
      flash[:notice] = "Your purchase was updated"
      redirect_to @purchase
    else
      render :edit
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    redirect_to purchases_path, notice: "Successfully destroyed purchase."
  end



  def check_for_cancel
    if params[:commit] == "Cancel"
      redirect_to my_page_path
    end
  end

  private
    def purchase_params
      params[:purchase].permit!
      # params[:purchase].permit(:purchased_on, :place, :purchased_total_cost, :items_attributes => [:brand_name, :item_name, :quantity, :weight, :measurement, :cost, :item_total_cost, :item_id, :purchase_item_id, :_destroy])
    end

end
