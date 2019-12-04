class Console < ActiveRecord::Base
    validates :name, presence: true 
    validates :manfacturer, presence: true 

    scope :nintendo, -> {where(manfacturer: 'Nintendo')}
  

    def formatted_name
        "#{manfacturer} #{name}"
    end
end
