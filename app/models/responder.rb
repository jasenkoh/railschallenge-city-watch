class Responder < ActiveRecord::Base
  self.primary_key = 'type'
  self.inheritance_column = 'type_inherit'
  belongs_to :emergency, foreign_key: :emergency_code
end
