class Segment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,              type: String, default: ""
end
