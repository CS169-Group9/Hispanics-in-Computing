# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module ChatScheduledmessages
          #
          # This method returns a list of pending scheduled messages.
          #
          # @option options [channel] :channel
          #   The channel of the scheduled messages.
          # @option options [Object] :cursor
          #   For pagination purposes, this is the cursor value returned from a previous call to chat.scheduledmessages.list indicating where you want to start this call from.
          # @option options [timestamp] :latest
          #   A UNIX timestamp of the latest value in the time range.
          # @option options [Object] :limit
          #   Maximum number of original entries to return.
          # @option options [timestamp] :oldest
          #   A UNIX timestamp of the oldest value in the time range.
          # @see https://api.slack.com/methods/chat.scheduledMessages.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/chat.scheduledMessages/chat.scheduledMessages.list.json
          def chat_scheduledMessages_list(options = {})
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            if block_given?
              Pagination::Cursor.new(self, :chat_scheduledMessages_list, options).each do |page|
                yield page
              end
            else
              post('chat.scheduledMessages.list', options)
            end
          end
        end
      end
    end
  end
end
