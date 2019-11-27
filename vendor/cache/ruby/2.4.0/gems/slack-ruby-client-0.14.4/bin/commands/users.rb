# This file was auto-generated by lib/tasks/web.rake

desc 'Users methods.'
command 'users' do |g|
  g.desc 'This method helps answer questions like:'
  g.long_desc %( This method helps answer questions like: - Which conversations am I a member of? - Which public channels is my bot user in? - Do I have any direct messages open with my friend Suzy? - Is my bot a member of any private channels? )
  g.command 'conversations' do |c|
    c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
    c.flag 'exclude_archived', desc: 'Set to true to exclude archived channels from the list.'
    c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached. Must be an integer no larger than 1000."
    c.flag 'types', desc: 'Mix and match channel types by providing a comma-separated list of any combination of public_channel, private_channel, mpim, im.'
    c.flag 'user', desc: "Browse conversations by a specific user ID's membership. Non-public channels are restricted to those where the calling user shares membership."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_conversations(options))
    end
  end

  g.desc 'This method allows the user to delete their profile image. It will clear whatever image is currently set.'
  g.long_desc %( This method allows the user to delete their profile image. It will clear whatever image is currently set. )
  g.command 'deletePhoto' do |c|
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_deletePhoto(options))
    end
  end

  g.desc "This method lets you find out information about a user's presence."
  g.long_desc %( This method lets you find out information about a user's presence. Consult the presence documentation for more details. )
  g.command 'getPresence' do |c|
    c.flag 'user', desc: 'User to get presence info on. Defaults to the authed user.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_getPresence(options))
    end
  end

  g.desc 'This method returns the ID of a team user.'
  g.long_desc %( This method returns the ID of a team user. )
  g.command 'id' do |c|
    c.flag 'user', desc: 'User to get ID for, prefixed with @.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_id(options))
    end
  end

  g.desc "After your Slack app is awarded an identity token through Sign in with Slack, use this method to retrieve a user's identity."
  g.long_desc %( After your Slack app is awarded an identity token through Sign in with Slack, use this method to retrieve a user's identity. )
  g.command 'identity' do |c|
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_identity(options))
    end
  end

  g.desc 'This method returns information about a member of a workspace.'
  g.long_desc %( This method returns information about a member of a workspace. )
  g.command 'info' do |c|
    c.flag 'user', desc: 'User to get info on.'
    c.flag 'include_locale', desc: 'Set this to true to receive the locale for this user. Defaults to false.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_info(options))
    end
  end

  g.desc 'This method returns a list of all users in the workspace. This includes deleted/deactivated users.'
  g.long_desc %( This method returns a list of all users in the workspace. This includes deleted/deactivated users. )
  g.command 'list' do |c|
    c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
    c.flag 'include_locale', desc: 'Set this to true to receive the locale for users. Defaults to false.'
    c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_list(options))
    end
  end

  g.desc 'Retrieve a single user by looking them up by their registered email address. Requires users:read.email.'
  g.long_desc %( Retrieve a single user by looking them up by their registered email address. Requires users:read.email. )
  g.command 'lookupByEmail' do |c|
    c.flag 'email', desc: 'An email address belonging to a user in the workspace.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_lookupByEmail(options))
    end
  end

  g.desc 'This method searches for users.'
  g.long_desc %( This method searches for users. )
  g.command 'search' do |c|
    c.flag 'user', desc: 'User to search for.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_search(options))
    end
  end

  g.desc 'This method is no longer functional and the behavior it controlled is no longer offered. The method will no longer exist beginning May 8, 2018.'
  g.long_desc %( This method is no longer functional and the behavior it controlled is no longer offered. The method will no longer exist beginning May 8, 2018. )
  g.command 'setActive' do |c|
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_setActive(options))
    end
  end

  g.desc 'This method allows the user to set their profile image. The caller can pass image data via image.'
  g.long_desc %( This method allows the user to set their profile image. The caller can pass image data via image. )
  g.command 'setPhoto' do |c|
    c.flag 'image', desc: 'File contents via multipart/form-data.'
    c.flag 'crop_w', desc: 'Width/height of crop box (always square).'
    c.flag 'crop_x', desc: 'X coordinate of top-left corner of crop box.'
    c.flag 'crop_y', desc: 'Y coordinate of top-left corner of crop box.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_setPhoto(options))
    end
  end

  g.desc "This method lets you set the calling user's manual presence."
  g.long_desc %( This method lets you set the calling user's manual presence. Consult the presence documentation for more details. )
  g.command 'setPresence' do |c|
    c.flag 'presence', desc: 'Either auto or away.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_setPresence(options))
    end
  end
end
