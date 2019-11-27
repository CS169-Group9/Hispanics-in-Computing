# This file was auto-generated by lib/tasks/web.rake

desc 'ChatScheduledmessages methods.'
command 'chat_scheduledMessages' do |g|
  g.desc 'This method returns a list of pending scheduled messages.'
  g.long_desc %( This method returns a list of pending scheduled messages. )
  g.command 'list' do |c|
    c.flag 'channel', desc: 'The channel of the scheduled messages.'
    c.flag 'cursor', desc: 'For pagination purposes, this is the cursor value returned from a previous call to chat.scheduledmessages.list indicating where you want to start this call from.'
    c.flag 'latest', desc: 'A UNIX timestamp of the latest value in the time range.'
    c.flag 'limit', desc: 'Maximum number of original entries to return.'
    c.flag 'oldest', desc: 'A UNIX timestamp of the oldest value in the time range.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.chat_scheduledMessages_list(options))
    end
  end
end
