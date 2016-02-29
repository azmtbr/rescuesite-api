class Animal < ActiveRecord::Base
  belongs_to :rescue
  validates_presence_of :rescue_id, :name
end
