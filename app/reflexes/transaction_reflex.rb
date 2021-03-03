# frozen_string_literal: true

class TransactionReflex < ApplicationReflex
  def add
    tx = Transaction.create(name: params[:transaction][:name], amount: params[:transaction][:amount].to_f)

    @transactions = Transaction.all.order(created_at: :desc)
  end
end
