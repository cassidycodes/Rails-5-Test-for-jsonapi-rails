class TestController < ApplicationController
  deserializable_resource :test_data do
    attributes
  end

  def create
    render json: params[:test_data]
  end
end
