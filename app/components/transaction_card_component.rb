# frozen_string_literal: true

class TransactionCardComponent < ViewComponent::Base
  def initialize(transaction:)
    @name = transaction[:name]
    @amount = transaction[:amount]
    @id = transaction[:id]
  end
end
