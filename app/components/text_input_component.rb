# frozen_string_literal: true

class TextInputComponent < ViewComponent::Base
  def initialize(form:, label:, field:)
    @form = form
    @label = label
    @field = field
  end

end
