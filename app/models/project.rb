class Project < ActiveRecord::Base
  def self.iron_find(_id)
    where(id: _id).first
  end
end
