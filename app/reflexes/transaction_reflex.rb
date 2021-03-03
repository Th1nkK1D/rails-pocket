# frozen_string_literal: true

class TransactionReflex < ApplicationReflex
  def fetch_transactions
    return Transaction.all.order(created_at: :desc)
  end

  def add
    transaction = params[:transaction]
    Transaction.create(name: transaction[:name], amount: transaction[:amount].to_f)

    @transactions = fetch_transactions
  end

  def remove
    Transaction.find_by(id: element.dataset[:id]).destroy

    @transactions = fetch_transactions
  end
end
