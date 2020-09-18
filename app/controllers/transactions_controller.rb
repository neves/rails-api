class TransactionsController < ApplicationController
  # GET /transactions
  def index
    # extrair parametros
    render json: TransactionsIndexAction.new.call
    render json: TransactionAction::Index.new.call
  end

  # GET /transactions/:id
  def show
    render json: {
      id: params[:id]
    }
  end
end
