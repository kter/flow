class User < ApplicationRecord
  belongs_to :group
  belongs_to :tflow
end
