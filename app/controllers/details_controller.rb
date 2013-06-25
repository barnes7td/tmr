class DetailsController < ApplicationController
  def index
    @details = Detail.all
  end

  def new
    @detail = Detail.new
    @detail.parts.build
    @detail.transactions.build
  end

  def show
    @detail = Detail.find(params[:id])
  end

  def create
    @detail = Detail.new(params[:detail])
    @detail.save
    # @detail.transactions = params[:transactions_attributes]
    redirect_to :root
  end

  def destroy
    Detail.find(params[:id]).destroy
    redirect_to :root
  end
end
