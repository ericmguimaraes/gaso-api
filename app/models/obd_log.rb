class ObdLog < ApplicationRecord
  belongs_to :obd_log_group

  validates :pid, :mode, :status, :obd_log_group, presence: true
end
