class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
          :recoverable, :trackable, :validatable,
          :confirmable

  include DeviseTokenAuth::Concerns::User

  belongs_to :rescue
  validates_presence_of :rescue_id
end
