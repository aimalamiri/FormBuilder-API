class Api::EntriesController < ApplicationController
  def form
    form = current_user.forms.find(params[:id])
    render json: form
  end
end
