class Project < ActiveRecord::Base
  def self.iron_find(_id)
    where(id: _id).first
  end

  def self.last_created_projects(limit)
    order(created_at: :desc).limit(limit)
  end
end
