class AddressesController < ApplicationController
  
  include ExtScaffold

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render :json => { :success => false }, :status => :not_found
  end
  before_filter :find_addresses, :only => [ :index ]
  before_filter :find_address, :only => [ :update, :destroy ]

  # GET /addresses
  # GET /addresses.ext_json
  def index
    respond_to do |format|
      format.html     # index.html.erb (no data required)
      format.ext_json { render :json => @addresses.to_ext_json(:class => Address, :count => Address.count(options_from_search(Address))) }
    end
  end

  # POST /addresses
  def create
    @address = Address.new(params[:address])
    render :json => @address.to_ext_json(:success => @address.save)
  end

  # PUT /addresses/1
  def update
    render :json => @address.to_ext_json(:success => @address.update_attributes(params[:address]))
  end

  # DELETE /addresses/1
  def destroy
    @address.destroy
    head :ok
  end
  
protected
  
  def find_address
    @address = Address.find(params[:id])
  end
  
  def find_addresses
    pagination_state = update_pagination_state_with_params!(Address)
    @addresses = Address.find(:all, options_from_pagination_state(pagination_state).merge(options_from_search(Address)))
  end

end
