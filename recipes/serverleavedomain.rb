opts = data_bag_item('domains', node['samba']['domaindatabagname'])

template '/tmp/leavedomain.sh' do
  source 'leavedomain.erb'
  mode '0700'
  variables(
    :domainadmin => opts['domainadmin'],
    :domainadminpassword => opts['domainadminpassword']
  )
end

execute 'leavedomain script' do
  command '/tmp/leavedomain.sh'
  action :run
end
