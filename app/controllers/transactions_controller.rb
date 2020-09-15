class TransactionsController < ApplicationController
  def index
    render json: [
      {id: 123}
    ]
  end

  def show
    render json: {
      id: params[:id]
    }
  end
end
