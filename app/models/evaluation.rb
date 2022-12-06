class Evaluation < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :application
end
