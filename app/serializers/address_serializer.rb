class AddressSerializer
  include JSONAPI::Serializer
  attributes :id,
             :contact_id,
             :street,
             :number,
             :district,
             :city,
             :state

end
