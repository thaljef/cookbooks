directory '/tmp/psgi' do
        action :create
end

psgi_application 'my application' do
        operator            'Catalyst'
        enable_service      false
        application_user    'user'
        application_home    '/home/user/app/MyApplication'
        script              '/home/user/app/MyApplication/scripts/catalyst.psgi'
        daemon_name         'catalyst'
        socket              '/tmp/app-socket.fcgi'
        perl5lib        [ 'cpanlib/lib/perl5' ]
        nproc           2
        proc_title      'my-app'
        mount           '/'
        config          '/home/user/app/MyApplication/app.conf'
        debug           1
        plackup_environment 'deployment'
        install_dir         '/tmp/psgi'
        environment({ "FOO" => "100" })
        action              'install'      
end


