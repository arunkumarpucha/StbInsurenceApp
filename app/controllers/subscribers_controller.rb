class SubscribersController < ApplicationController
	def new
    #raise params.inspect
		@subscriber=Subscriber.new
    @lco=Lco.find(params[:lco_id])
	end

	def create
			
      @lco=Lco.find(params[:lco_id])
      
      @subscriber=@lco.subscribers.new(subscriber_params)
  	#@subscriber=Subscriber.new(subscriber_params)

    address_hash={address: {door_no: params[:door_no],street_one: params[:street_one],street_two: params[:street_two],
    	city: params[:city],state: params[:state],country:params[:country]}}
   
   #raise address_hash[:address].inspect
   
    
  	if @subscriber.save
       @subscriber.addresses.create(address_hash[:address])
  		redirect_to lco_path(@lco)
  	else
  		render 'new'
  	end
	end


  def destroy
   
     subscriber=Subscriber.find(params[:id])
      
     lco=Lco.find(params[:lco_id])
      
      if subscriber.destroy
        redirect_to lco_path(lco)
      else
        flash[:notice]="record not got deleted successfully"
        redirect_to lco_path(lco)
      end
   

  end


  private

  def subscriber_params
  	params[:subscriber].permit(:name,:email_id,:mobile_no,:lco_id)
  end


end
