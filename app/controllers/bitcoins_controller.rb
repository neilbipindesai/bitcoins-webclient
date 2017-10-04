class BitcoinsController < ApplicationController
  
  def index
    @bitcoins = Unirest.get("localhost:3000/api/v2/bitcoins.json").body
  end

  def new

  end

  def create
    @bitcoin = Bitcoin.create(
                               address: params[:address],
                               testnet_address: params[:testnet_address]
                            )
    @bitcoin = Unirest.post(
                            )
    render :show


  
  def show
    @bitcoin = Unirest.get("localhost:3000/api/v2/bitcoins/#{params[:id]}.json").body
  end

  def update
    @bitcoin = Unirest.get("localhost:3000/api/v2/bitcoins/#{params[:id]}.json").body
    @bitcoin.assign_attributes(
                                address: params[:address],
                                testnet_address: params[:testnet_address]
                               )
    @bitcoin.save
    render :show
  end

  def destroy
    @bitcoin = Unirest.get("localhost:3000/bitcoins/#{params[:id]}.json").body
    @bitcoin.destroy
  end
 end
end