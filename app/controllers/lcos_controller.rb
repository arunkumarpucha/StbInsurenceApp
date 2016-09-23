class LcosController < ApplicationController
  def login
  	@login=Login.new
  end

  def login_check
    
    lco_record=Lco.find_by(mobile_no:login_params[:mobile_no] ,lco_name:login_params[:user_name] )
   
    if lco_record.present?
    	redirect_to lco_path(lco_record)
    else
    	
    	redirect_to new_lco_path
    	
    end

  end

  def new
  	@lco=Lco.new

  end

  def create
  	#raise params.inspect
  	@lco=Lco.new(lco_params)
    address_hash={address: {door_no: params[:door_no],street_one: params[:street_one],street_two: params[:street_two],
    	city: params[:city],state: params[:state],country:params[:country]}}
   
   #raise address_hash[:address].inspect

  	if @lco.save
      @lco.addresses.create(address_hash[:address])
  		redirect_to lco_path(@lco)
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def index
  

  end

  def show
  		@subscribers=Subscriber.all
  	  @lco=Lco.find(params[:id])
  	#raise params.inspect
  end

  
  private

  def lco_params
  	params[:lco].permit(:mso_name,:lco_name,:lco_code,:mobile_no,:email_id)
  end
  
  def login_params
  	params[:login].permit(:user_name,:mobile_no)
   end
end
