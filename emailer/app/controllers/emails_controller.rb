class EmailsController < ApplicationController
	def index 
		@emails = Email.all
	end

	def show
	    @email = Email.find(params[:id])
	end

	def new
	    @email = Email.new
	end
	
	def create

	    @email = Email.new(params[:email])
	    if @email.save
	    	Notifier.send_email(@email).deliver
	        redirect_to emails_path, :notice => "Your email was saved"
	    else
	        render "new"
	    end
	end
end
