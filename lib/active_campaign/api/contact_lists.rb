# frozen_string_literal: true

module ActiveCampaign
  module API
    #
    # Interface to contactList endpoints
    #
    # @author Mikael Henriksson <mikael@mhenrixon.com>
    #
    module ContactLists
      #
      # Add a contact to a list
      #
      # @param [Hash] params create a new webhook with this data
      # @param [String] :list_id the id of the list to add the contact to
      # @param [String] :contact_id the id of the contact to add to list
      # @param [String] :status set to 1 to subscribe the contact to the list, set to 2 to unsubscribe the contact from the list
      # @param [Integer] :source_id set to 4 when re-subscribing a contact to a list
      #
      # @return [Hash] a hash containing contacts and contactList
      #
      def update_list_status_for_contact(
        list_id:,
        contact_id:,
        status: 1,
        source_id: nil
      )
        post(
          'contactLists',
          contactList: {
            list: list_id,
            contact: contact_id,
            status: status,
            sourceid: source_id,
          }.compact
        )
      end
    end
  end
end
