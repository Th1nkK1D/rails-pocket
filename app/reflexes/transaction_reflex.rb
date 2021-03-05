# frozen_string_literal: true

class TransactionReflex < ApplicationReflex
  def add
    transaction = params[:transaction]

    Transaction.create(name: transaction[:name], amount: transaction[:amount].to_f)
  end

  def remove
    Transaction.find_by(id: element.dataset[:id]).destroy!
  end
end
