class Portfolio < ApplicationRecord

    validates_presence_of :title, :body, :main_image, :thumb_image

    #Custom scopes for the model.
    #So controller only managers data flow
    #Instead, if you have something that should be relegated to the model
    def self.react
        where(subtitle: "React")
    end

    def self.rubyOnRails
        where(subtitle: "Ruby on Rails")
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
end
