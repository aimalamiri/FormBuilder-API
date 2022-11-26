class Api::FormsController < ApplicationController
  before_action :authenticate_user!

  def index
    forms = Form.all
    render json: forms
  end

  def store
    form = current_user.forms.create(form_params)
    render json: form
  end

  private

  def form_params
    params.require(:form).permit(:name, :description, :fields)
  end
end
