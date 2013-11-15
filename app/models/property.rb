class Property < ActiveRecord::Base  
  belongs_to :agent
    has_many :viewings , :dependent => :delete_all
    validates_presence_of :address, :no_of_beds, :agent_id, :price, :photo, :description 
end
