class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contracts = Contract.all
    respond_with(@contracts)
  end

  def show
    respond_with(@contract)
  end

  def new
    @contract = Contract.new
    respond_with(@contract)
  end

  def edit
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.save
    respond_with(@contract)
  end

  def update
    @contract.update(contract_params)
    respond_with(@contract)
  end

  def destroy
    @contract.destroy
    respond_with(@contract)
  end

  private
    def set_contract
      @contract = Contract.find(params[:id])
    end

    def contract_params
      params.require(:contract).permit(:name, :freelancer, :organization, :event, :details)
    end
end
