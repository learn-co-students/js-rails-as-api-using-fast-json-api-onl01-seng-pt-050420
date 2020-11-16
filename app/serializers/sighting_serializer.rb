class SightingSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :bird
  belongs_to :location
end
