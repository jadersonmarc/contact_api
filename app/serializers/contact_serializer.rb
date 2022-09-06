class ContactSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :cpf, :email, :birth_date

  attribute :addresses do |object|
    AddressSerializer.new(object.addresses)
  end
end
