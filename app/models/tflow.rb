class Tflow < ApplicationRecord
  has_many :task, dependent: :destroy
  accepts_nested_attributes_for :task, allow_destroy: true
end
