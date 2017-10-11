class { 'conjur':
  account            => 'demo',
  appliance_url      => 'http://conjur',
  authn_login        => "host/app-${::trusted['hostname']}",
  host_factory_token => Sensitive('placeholder'),
  version            => 5,
}

class secrets {
  $vendor_oauth_token = conjur::secret('app/vendor-oauth-token')
  $postgres_password  = conjur::secret('app/postgres-password')
}
