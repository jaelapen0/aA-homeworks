module Toyable
  extend ActiveSupport::Concern

  included do
    has many :toys, as: :toyables
  end

  def receive_toy(name)
    self.toys.find_or_create_by(name: name)
  end
end