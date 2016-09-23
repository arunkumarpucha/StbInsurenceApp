class InsurencesController < ApplicationController
	
	def new
		
		@subscriber=Subscriber.find(params[:subscriber_id])
		@insurence=Insurence.new
	end

	def create
		
		@subscriber=Subscriber.find(params[:subscriber_id])
		@lco=@subscriber.lco

		@insurence=@subscriber.insurences.new(insurence_params)

		stbs_hash={stb: {stb_no: params[:stb_no],model: params[ :model],description: params[:description]}}

		if @insurence.save
       @insurence.stbs.create(stbs_hash[:stb])
       redirect_to lco_path(@lco)
		else
			render 'new'
		end
	end

	def show
		@subscriber =Subscriber.find(params[:subscriber_id])
		@insurence=Insurence.find(params[:id])
		@lco=@subscriber.lco
		@stb=Stb.find(@insurence.id)
	end


	def insurence_params
		params[:insurence].permit(:ins_amt,:ins_date,:no_of_years,:subscriber_id)
	end

end
