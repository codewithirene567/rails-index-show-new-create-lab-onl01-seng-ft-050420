class CouponsController < ApplicationController
def index
    @coupons = Coupon.all #this is going to let the index page show all the coupons
  end

  def show
    @coupon = Coupon.find(params[:id]) #this is going to give the showpage the ability to show the coupon based on the id number
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)#Can you find the best way to a controller
    # that knows how to work with this thing called a Post based on looking at this instance called @post.
    end
  end