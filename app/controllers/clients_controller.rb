class ClientsController < ApplicationController
    before_action :find_client, only: [:show]

    def index 
        @clients = Client.all
    end

    def show 
        @rentals = @client.rentals
        @vhs = @client.vhs
    end 

    def new 
        @errors = flash[:errors]
        @client = Client.new
    end

    def create 
        @client = Client.create(client_params)

        if @client.valid?
            redirect_to client_path(@client)
        else
            flash[:errors] = @client.errors.full_messages
            redirect_to new_client_path
        end
    end 

    # def 

    private 

    def find_client
        @client = Client.find(params[:id])
    end 

    def client_params
        params.require(:client).permit(:name, :home_address)
    end

end
