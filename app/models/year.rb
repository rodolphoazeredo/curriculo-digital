class Year
  include Mongoid::Document
  include Mongoid::Timestamps

  field :year,              type: String, default: ""
end
