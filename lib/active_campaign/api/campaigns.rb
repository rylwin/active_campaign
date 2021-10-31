# frozen_string_literal: true

module ActiveCampaign
  module API
    #
    # Interface to campaign message endpoints
    #
    # @author Maxim Tam <maxim.tam@welcomehomesoftware.com>
    #
    module Campaigns
      #
      # Get a list of campaigns
      #
      # @return [Hash]
      #
      def show_campaigns
        get('campaigns')
      end

      #
      # Get a campaign
      #
      # @param [Integer] id the id of a campaign
      #
      # @return [Hash]
      #
      def show_campaign(id)
        get("campaigns/#{id}")
      end

      #
      # Get a campaign's sender
      #
      # @param [Integer] id the id of a campaign
      #
      # @return [Hash]
      #
      def show_campaign_user(id)
        get("campaigns/#{id}/user")
      end

      #
      # Get a list of campaigns lists of a camapign
      #
      # @param [Integer] id the id of a campaign
      #
      # @return [Hash]
      #
      def show_campaign_lists(id)
        get("campaigns/#{id}/campaignLists")
      end

      #
      # Get a campaign message of a camapign
      #
      # @param [Integer] id the id of a campaign
      #
      # @return [Hash]
      #
      def show_campaign_message(id)
        get("campaigns/#{id}/campaignMessage")
      end
    end
  end
end
