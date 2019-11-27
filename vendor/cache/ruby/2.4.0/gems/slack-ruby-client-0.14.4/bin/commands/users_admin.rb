# This file was auto-generated by lib/tasks/web.rake

desc 'UsersAdmin methods.'
command 'users_admin' do |g|
  g.desc 'Send an invitation to a new user by email (undocumented)'
  g.long_desc %( Send an invitation to a new user by email )
  g.command 'invite' do |c|
    c.flag 'email', desc: 'Email address of the new user'
    c.flag 'channels', desc: 'Comma-separated list of IDs (not names!) for channels, which the new user will auto-join. Both channel IDs for public channels and group IDs for private chanels work.'
    c.flag 'first_name', desc: 'Prefilled input for the "First name" field on the "new user registration" page.'
    c.flag 'last_name', desc: 'Prefilled input for the "Last name" field on the "new user registration" page.'
    c.flag 'resend', desc: 'Resend the invitation email if the user has already been invited and the email was sent some time ago.'
    c.flag 'restricted', desc: 'Invite a guest that can use multiple channels'
    c.flag 'ultra_restricted', desc: 'Invite a guest that can use one channel only'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_admin_invite(options))
    end
  end

  g.desc 'Disable a user (undocumented)'
  g.long_desc %( Disable a user )
  g.command 'setInactive' do |c|
    c.flag 'user', desc: 'User to disable'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.users_admin_setInactive(options))
    end
  end
end
