class Entry < ActiveRecord::Base
  belongs_to :project

  validates :hours, presence: true
  validates :minutes, presence: true
  validates :hours, numericality: true
  validates :minutes, numericality: true
  validates :date, presence: true
  validates :project, presence: true
end
