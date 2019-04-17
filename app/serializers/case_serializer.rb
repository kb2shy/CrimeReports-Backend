class CaseSerializer < ActiveModel::Serializer
  attributes :id

  has_one :imageurl
  has_one :firstname
  has_one :lastname
  has_many :courtdate
  has_one :gonumber
  has_one :crime
  has_one :neighborhood
  has_one :dov
  has_many :events
end
