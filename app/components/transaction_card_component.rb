# frozen_string_literal: true

class TransactionCardComponent < ViewComponent::Base
  def initialize(transaction:)
    @name = transaction[:name].capitalize
    @amount = transaction[:amount]
    @id = transaction[:id]
    @timestamp = transaction[:created_at].strftime("%F")
  end
end
