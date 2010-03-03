use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'MooseX::Types::HTTP',
    license             => 'perl',
    dist_author         => 'James E. Marca <jmarca@translab.its.uci.edu>',
    dist_version_from   => 'lib/MooseX/Types/HTTP.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'MooseX-Types-HTTP-*' ],
);

$builder->create_build_script();
