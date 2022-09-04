class Contact < ApplicationRecord
  has_many :addresses, foreign_key: :contact_id, :class_name => 'Address'

  def self.contact_with_address
    addresses_contact = Contact.includes(:addresses)
    addresses_contact.map do |contact|
      {contact: contact, address_contact: contact.addresses}
    end
  end

end
