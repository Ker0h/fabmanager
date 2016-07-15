class MachinesController < ApplicationController
  before_action :set_machine, only: [:show, :edit, :update. :destroy]
  before_action :set_fabmoment, only: [:show, :edit, :update. :destroy]

  def index
    @machines = Machine.all 
  end

  def show
  end

  def new
    @machine = @fabmoment.machines.build
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_machine
    @machine = Machine.find(params[:id])
  end

  def set_fabmoment
    @fabmoment = Fabmoment.find(params[:fabmoment_id])
  end

  def machine_params
    params.require(:machine).permit(:name)
  end
end
