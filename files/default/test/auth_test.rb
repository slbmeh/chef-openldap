describe_recipe 'openldap::auth' do
  it 'can bind anonymously' do
    output = `/usr/bin/ldapwhoami -x -H #{node['openldap']['server_uri']} 2>&1`
    assert_match /anonymous/, output
    # TODO: consider `require "English"' to change this back to the more readable $CHILD_STATUS
    assert_equal 0, $?.exitstatus
  end
end
