class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def show
    @promise = Promise.find_by_id(params[:id])
  end

  def new
    @promise = Promise.new
  end

  def create 
    promise = Promise.new(promise_params)
    if promise.save
        flash.notice = "Promise saved"
        redirect_to "/promises/#{promise.id}"
    else
        render :new
        flash.notice = "promise save failed"
    end
  end

  def edit
    @promise = Promise.find_by_id(params[:id])
  end

  def update
    if Promise.update(promise_params)
      redirect_to "/promises/#{params[:id]}"
    else
      render :edit
        flash.notice = "promise update failed"
    end
  end

  def delete
    Promise.delete(params[:id])
    redirect_to "/promises"
  end

  private
    def promise_params
      params.require(:promise).permit(:body, :status)
    end
end
