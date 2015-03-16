describe_recipe 'openldap::auth' do
  it 'can bind anonymously' do
    # TODO: test anonomously binding to all configured protocols
    output = `/usr/bin/ldapwhoami -x -H ldapi:/// 2>&1`
    assert_match /anonymous/, output
    # TODO: consider `require "English"' to change this back to the more readable $CHILD_STATUS
    assert_equal 0, $?.exitstatus
  end
end
