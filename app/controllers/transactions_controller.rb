class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    # puts @transactions
  end
end
