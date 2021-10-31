# frozen_string_literal: true

module ActiveCampaign
  module API
    #
    # Interface to campaign message endpoints
    #
    # @author Maxim Tam <maxim.tam@welcomehomesoftware.com>
    #
    module CampaignMessages
      #
      # Get a campaign message
      #
      # @param [Integer] id the id of a campaign message (NOT MESSAGE ID)
      #
      # @return [Hash]
      #
      def show_message(id)
        get("campaignMessages/#{id}/message")
      end
    end
  end
end
