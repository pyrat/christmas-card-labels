class LabelsController < ApplicationController
  def index
    @addresses = Address.all
  end
end
