 class Task < ApplicationRecord
   validates :title, :completed, presence: true
end
