# This file was auto-generated by lib/tasks/web.rake

desc 'Chat methods.'
command 'chat' do |g|
  g.desc 'Execute a slash command in a public channel (undocumented)'
  g.long_desc %( Execute a slash command in a public channel )
  g.command 'command' do |c|
    c.flag 'channel', desc: 'Channel to execute the command in.'
    c.flag 'command', desc: 'Slash command to be executed. Leading backslash is required.'
    c.flag 'text', desc: 'Additional parameters provided to the slash command.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_command(options))
    end
  end

  g.desc 'This method deletes a message from a channel.'
  g.long_desc %( This method deletes a message from a channel. )
  g.command 'delete' do |c|
    c.flag 'channel', desc: 'Channel containing the message to be deleted.'
    c.flag 'ts', desc: 'Timestamp of the message to be deleted.'
    c.flag 'as_user', desc: 'Pass true to delete the message as the authed user with chat:write:user scope. Bot users in this context are considered authed users. If unused or false, the message will be deleted with chat:write:bot scope.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_delete(options))
    end
  end

  g.desc 'This method deletes a pending scheduled message before it is sent.'
  g.long_desc %( This method deletes a pending scheduled message before it is sent. )
  g.command 'deleteScheduledMessage' do |c|
    c.flag 'channel', desc: 'The channel the scheduled_message is posting to.'
    c.flag 'scheduled_message_id', desc: 'scheduled_message_id returned from call to chat.scheduleMessage.'
    c.flag 'as_user', desc: 'Pass true to delete the message as the authed user with chat:write:user scope. Bot users in this context are considered authed users. If unused or false, the message will be deleted with chat:write:bot scope.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_deleteScheduledMessage(options))
    end
  end

  g.desc 'Easily exchange a message timestamp and a channel ID for a friendly HTTP-based permalink to that message. Handles message threads and all conversation types.'
  g.long_desc %( Easily exchange a message timestamp and a channel ID for a friendly HTTP-based permalink to that message. Handles message threads and all conversation types. )
  g.command 'getPermalink' do |c|
    c.flag 'channel', desc: 'The ID of the conversation or channel containing the message.'
    c.flag 'message_ts', desc: "A message's ts value, uniquely identifying it within a channel."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_getPermalink(options))
    end
  end

  g.desc 'This method sends a me message to a channel from the calling user.'
  g.long_desc %( This method sends a me message to a channel from the calling user. )
  g.command 'meMessage' do |c|
    c.flag 'channel', desc: 'Channel to send message to. Can be a public channel, private group or IM channel. Can be an encoded ID, or a name.'
    c.flag 'text', desc: 'Text of the message to send.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_meMessage(options))
    end
  end

  g.desc 'This method posts an ephemeral message, which is visible only to the assigned user in a specific public channel, private channel, or private conversation.'
  g.long_desc %( This method posts an ephemeral message, which is visible only to the assigned user in a specific public channel, private channel, or private conversation. )
  g.command 'postEphemeral' do |c|
    c.flag 'attachments', desc: 'A JSON-based array of structured attachments, presented as a URL-encoded string.'
    c.flag 'channel', desc: 'Channel, private group, or IM channel to send message to. Can be an encoded ID, or a name.'
    c.flag 'text', desc: "Text of the message to send. See below for an explanation of formatting. This field is usually required, unless you're providing only attachments instead."
    c.flag 'user', desc: 'id of the user who will receive the ephemeral message. The user should be in the channel specified by the channel argument.'
    c.flag 'as_user', desc: 'Pass true to post the message as the authed user. Defaults to true if the chat:write:bot scope is not included. Otherwise, defaults to false.'
    c.flag 'blocks', desc: 'A JSON-based array of structured blocks, presented as a URL-encoded string.'
    c.flag 'icon_emoji', desc: 'Emoji to use as the icon for this message. Overrides icon_url. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below.'
    c.flag 'icon_url', desc: 'URL to an image to use as the icon for this message. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below.'
    c.flag 'link_names', desc: 'Find and link channel names and usernames.'
    c.flag 'parse', desc: 'Change how messages are treated. Defaults to none. See below.'
    c.flag 'thread_ts', desc: "Provide another message's ts value to post this message in a thread. Avoid using a reply's ts value; use its parent's value instead. Ephemeral messages in threads are only shown if there is already an active thread."
    c.flag 'username', desc: "Set your bot's user name. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_postEphemeral(options))
    end
  end

  g.desc 'This method posts a message to a public channel, private channel, or direct message/IM channel.'
  g.long_desc %( This method posts a message to a public channel, private channel, or direct message/IM channel. )
  g.command 'postMessage' do |c|
    c.flag 'channel', desc: 'Channel, private group, or IM channel to send message to. Can be an encoded ID, or a name. See below for more details.'
    c.flag 'text', desc: "Text of the message to send. See below for an explanation of formatting. This field is usually required, unless you're providing only attachments instead. Provide no more than 40,000 characters or risk truncation."
    c.flag 'as_user', desc: 'Pass true to post the message as the authed user, instead of as a bot. Defaults to false. See authorship below.'
    c.flag 'attachments', desc: 'A JSON-based array of structured attachments, presented as a URL-encoded string.'
    c.flag 'blocks', desc: 'A JSON-based array of structured blocks, presented as a URL-encoded string.'
    c.flag 'icon_emoji', desc: 'Emoji to use as the icon for this message. Overrides icon_url. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below.'
    c.flag 'icon_url', desc: 'URL to an image to use as the icon for this message. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below.'
    c.flag 'link_names', desc: 'Find and link channel names and usernames.'
    c.flag 'mrkdwn', desc: 'Disable Slack markup parsing by setting to false. Enabled by default.'
    c.flag 'parse', desc: 'Change how messages are treated. Defaults to none. See below.'
    c.flag 'reply_broadcast', desc: 'Used in conjunction with thread_ts and indicates whether reply should be made visible to everyone in the channel or conversation. Defaults to false.'
    c.flag 'thread_ts', desc: "Provide another message's ts value to make this message a reply. Avoid using a reply's ts value; use its parent instead."
    c.flag 'unfurl_links', desc: 'Pass true to enable unfurling of primarily text-based content.'
    c.flag 'unfurl_media', desc: 'Pass false to disable unfurling of media content.'
    c.flag 'username', desc: "Set your bot's user name. Must be used in conjunction with as_user set to false, otherwise ignored. See authorship below."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_postMessage(options))
    end
  end

  g.desc 'This method schedules a message for delivery to a public channel, private channel, or direct message/IM channel at a specified time in the future.'
  g.long_desc %( This method schedules a message for delivery to a public channel, private channel, or direct message/IM channel at a specified time in the future. )
  g.command 'scheduleMessage' do |c|
    c.flag 'channel', desc: 'Channel, private group, or DM channel to send message to. Can be an encoded ID, or a name. See below for more details.'
    c.flag 'post_at', desc: 'Unix EPOCH timestamp of time in future to send the message.'
    c.flag 'text', desc: "Text of the message to send. See below for an explanation of formatting. This field is usually required, unless you're providing only attachments instead. Provide no more than 40,000 characters or risk truncation."
    c.flag 'as_user', desc: 'Pass true to post the message as the authed user, instead of as a bot. Defaults to false. See authorship below.'
    c.flag 'attachments', desc: 'A JSON-based array of structured attachments, presented as a URL-encoded string.'
    c.flag 'blocks', desc: 'A JSON-based array of structured blocks, presented as a URL-encoded string.'
    c.flag 'link_names', desc: 'Find and link channel names and usernames.'
    c.flag 'parse', desc: 'Change how messages are treated. Defaults to none. See below.'
    c.flag 'reply_broadcast', desc: 'Used in conjunction with thread_ts and indicates whether reply should be made visible to everyone in the channel or conversation. Defaults to false.'
    c.flag 'thread_ts', desc: "Provide another message's ts value to make this message a reply. Avoid using a reply's ts value; use its parent instead."
    c.flag 'unfurl_links', desc: 'Pass true to enable unfurling of primarily text-based content.'
    c.flag 'unfurl_media', desc: 'Pass false to disable unfurling of media content.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_scheduleMessage(options))
    end
  end

  g.desc 'This method attaches Slack app unfurl behavior to a specified and relevant message. A user token is required as this method does not support bot user tokens.'
  g.long_desc %( This method attaches Slack app unfurl behavior to a specified and relevant message. A user token is required as this method does not support bot user tokens. )
  g.command 'unfurl' do |c|
    c.flag 'channel', desc: 'Channel ID of the message.'
    c.flag 'ts', desc: 'Timestamp of the message to add unfurl behavior to.'
    c.flag 'unfurls', desc: 'URL-encoded JSON map with keys set to URLs featured in the the message, pointing to their unfurl blocks or message attachments.'
    c.flag 'user_auth_message', desc: 'Provide a simply-formatted string to send as an ephemeral message to the user as invitation to authenticate further and enable full unfurling behavior.'
    c.flag 'user_auth_required', desc: 'Set to true or 1 to indicate the user must install your Slack app to trigger unfurls for this domain.'
    c.flag 'user_auth_url', desc: 'Send users to this custom URL where they will complete authentication in your app to fully trigger unfurling. Value should be properly URL-encoded.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_unfurl(options))
    end
  end

  g.desc 'This method updates a message in a channel. Though related to chat.postMessage, some parameters of chat.update are handled differently.'
  g.long_desc %( This method updates a message in a channel. Though related to chat.postMessage, some parameters of chat.update are handled differently. )
  g.command 'update' do |c|
    c.flag 'channel', desc: 'Channel containing the message to be updated.'
    c.flag 'text', desc: "New text for the message, using the default formatting rules. It's not required when presenting attachments."
    c.flag 'ts', desc: 'Timestamp of the message to be updated.'
    c.flag 'as_user', desc: 'Pass true to update the message as the authed user. Bot users in this context are considered authed users.'
    c.flag 'attachments', desc: 'A JSON-based array of structured attachments, presented as a URL-encoded string. This field is required when not presenting text.'
    c.flag 'blocks', desc: 'A JSON-based array of structured blocks, presented as a URL-encoded string.'
    c.flag 'link_names', desc: 'Find and link channel names and usernames. Defaults to none. See below.'
    c.flag 'parse', desc: 'Change how messages are treated. Defaults to client, unlike chat.postMessage. See below.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_update(options))
    end
  end
end
