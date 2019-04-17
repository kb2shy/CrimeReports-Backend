class EventSerializer < ActiveModel::Serializer
  attributes :id
  has_one :case
end
