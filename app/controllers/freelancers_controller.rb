class FreelancersController < ApplicationController
  before_action :set_freelancer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @freelancers = Freelancer.all
    respond_with(@freelancers)
  end

  def show
    respond_with(@freelancer)
  end

  def new
    @freelancer = Freelancer.new
    respond_with(@freelancer)
  end

  def edit
  end

  def create
    @freelancer = Freelancer.new(freelancer_params)
    @freelancer.save
    respond_with(@freelancer)
  end

  def update
    @freelancer.update(freelancer_params)
    respond_with(@freelancer)
  end

  def destroy
    @freelancer.destroy
    respond_with(@freelancer)
  end

  private
    def set_freelancer
      @freelancer = Freelancer.find(params[:id])
    end

    def freelancer_params
      params.require(:freelancer).permit(:name, :email, :phone, :bio)
    end
end
