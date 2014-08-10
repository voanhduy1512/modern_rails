class Blog < ActiveRecord::Base
  validates :title, :author, presence: true
end
