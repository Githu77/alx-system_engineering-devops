# use exec to kill killmenow process
exec {'kill-killmenow':
  command => 'pkill killmenow',
  path    => '/usr/bin';
}
