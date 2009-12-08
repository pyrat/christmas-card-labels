class LabelsController < ApplicationController
  def index
    if params[:ids] && !params[:ids].blank?
      ids = params[:ids].split(',')
      @addresses = Address.find(ids)
    else
      @addresses = Address.all
    end
  end
end
