class Product < ApplicationRecord
    # present products in alphabetical order
    default_scope { order(title: :asc)}

    #Validation
    validates :title, :desc, :image_url, :presence => true
    validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
    validates :title, :uniqueness => true
    validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)\z}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
    }

    has_many :line_items

    before_destroy :ensure_not_referenced_by_line_items


    private 

    def ensure_not_referenced_by_line_items
        if line_items.empty?
            return true
        else
            errors.add(:base, "Line items present.")
            return false
        end
    end
    
    

end
