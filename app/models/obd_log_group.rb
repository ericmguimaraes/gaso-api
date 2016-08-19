class ObdLogGroup < ApplicationRecord
  belongs_to :car
  has_many :obd_logs

  def as_json(options = {})
    super(options.merge(include: [:obd_logs]))
  end
end
