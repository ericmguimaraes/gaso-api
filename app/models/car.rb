class Car < ApplicationRecord
  belongs_to :user
  has_many :obd_log_groups

  validates :model, presence: true

  def as_json(options = {})
    super(options.merge(include: [:user, obd_log_groups: { include: :obd_logs }]))
  end
end
