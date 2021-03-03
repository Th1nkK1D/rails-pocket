# frozen_string_literal: true

class TransactionReflex < ApplicationReflex
  def add
    Transaction.create(name: params[:transaction][:name], amount: params[:transaction][:amount].to_f)

    @transactions = Transaction.all.order(created_at: :desc)
  end

  def remove
    Transaction.find_by(id: element.dataset[:id]).destroy

    @transactions = Transaction.all.order(created_at: :desc)
  end
end
