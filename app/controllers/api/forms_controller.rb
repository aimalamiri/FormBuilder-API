class Api::FormsController < ApplicationController
  before_action :authenticate_user!

  def index
    forms = Form.all
    render json: forms
  end

  def create
    p "-------------------- "
    p form_params
    p "--------------------"
    form = current_user.forms.create(form_params)
    render json: form
  end

  def update
    form = current_user.forms.find(params[:id])
    form.update(form_params)
    render json: form
  end

  def destroy
    form = current_user.forms.find(params[:id])
    form.destroy
    render json: form
  end

  private

  def form_params
    params.require(:form).permit(:name, :description, :fields)
  end
end
