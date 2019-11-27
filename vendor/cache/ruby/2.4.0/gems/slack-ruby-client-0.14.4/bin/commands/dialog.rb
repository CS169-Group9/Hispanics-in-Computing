# This file was auto-generated by lib/tasks/web.rake

desc 'Dialog methods.'
command 'dialog' do |g|
  g.desc 'Open a dialog with a user by exchanging a trigger_id received from another interaction. See the dialogs documentation to learn how to obtain triggers define form elements.'
  g.long_desc %( Open a dialog with a user by exchanging a trigger_id received from another interaction. See the dialogs documentation to learn how to obtain triggers define form elements. )
  g.command 'open' do |c|
    c.flag 'dialog', desc: 'The dialog definition. This must be a JSON-encoded string.'
    c.flag 'trigger_id', desc: 'Exchange a trigger to post to the user.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.dialog_open(options))
    end
  end
end
