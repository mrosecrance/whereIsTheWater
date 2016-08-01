class WhitewaterRun < ActiveRecord::Base
    validates :name, :description, :whitewater_class, presence: true
end
