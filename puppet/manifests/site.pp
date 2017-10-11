node 'default' {
  require secrets

  file { '/tmp/dbpass':
    ensure    => file,
    content   => "${secrets::postgres_password.unwrap}",
    show_diff => false, # don't log file content
  }

  file { '/tmp/token':
    ensure    => file,
    content   => "${secrets::vendor_oauth_token.unwrap}",
    show_diff => false,
  }

}
