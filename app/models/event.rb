class Event < ActiveRecord::Base

  belongs_to :conference
  has_many :recordings, dependent: :destroy

  validates_presence_of :conference
  validates_presence_of :guid

  def display_name
    self.guid.nil? ? self.id : self.guid
  end

end
