#configuring ssh config

file_line{'switching off passwordd authentication':
	path => '/etc/ssh/ssh_config',
	line => 'PasswordAuthentication no'
}

file_line{'File identity':
	path => '/etc/ssh/ssh_config',
	line => 'IdentityFile ~/.ssh/school'
}
