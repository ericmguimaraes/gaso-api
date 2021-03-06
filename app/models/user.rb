class User < ApplicationRecord
  has_many :cars
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def as_json(options = {})
   super(options.merge(include: :cars))
  end
end
