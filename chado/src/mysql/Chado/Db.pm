package Chado::Db;
use base 'Chado::DBI';
use Class::DBI::Pager;

Chado::Db->set_up_table( 'db' );
Chado::Db->has_many('dbxrefs', 'Chado::Dbxref' => 'db_id');

sub id { return shift->db_id }

1;
