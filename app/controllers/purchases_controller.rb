class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
    10.times { @purchase.items.build }
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

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    redirect_to purchases_path, notice: "Successfully destroyed purchase."
  end

  private
    def purchase_params
      params[:purchase].permit(:purchased_on, :place, :purchased_total_cost, :items_attributes => [:brand_name, :item_name, :quantity, :weight, :measurement, :cost, :item_total_cost, :_destroy ])
    end

end
