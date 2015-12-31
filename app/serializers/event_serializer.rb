class EventSerializer < ActiveModel::Serializer
  attributes  :type,
              :kind,
              :payload,
              :active

  belongs_to  :beacon

  def self.includes
    %w(beacon)
  end
end