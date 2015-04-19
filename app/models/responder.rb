class Responder < ActiveRecord::Base
  self.primary_key = :name
  self.inheritance_column = :_type_disabled

  belongs_to :emergency, foreign_key: :emergency_code

  validates :type, presence: true
  validates :name, presence: true, uniqueness: true
  validates :capacity, presence: true, inclusion: 1..5

  #serializer is having issues with whitelisting attributes on POST https://github.com/rails-api/active_model_serializers/issues/719
  def hash
    {
      emergency_code: emergency_code,
      type: type,
      name: name,
      capacity: capacity,
      on_duty: on_duty
    }
  end
end
