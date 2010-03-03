use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'MooseX::Types::HTTP',
    AUTHOR        => 'James E. Marca <jmarca@translab.its.uci.edu>',
    VERSION_FROM  => 'lib/MooseX/Types/HTTP.pm',
    ABSTRACT_FROM => 'lib/MooseX/Types/HTTP.pm',
    PL_FILES      => {},
    PREREQ_PM     => {
        'Test::More'                 => 0,
        'Test::Most'                 => 0,
        'Moose'                      => '0.50',
        'MooseX::Types'              => 0,
        'MooseX::Types::Path::Class' => 0,
        'HTTP::Request'              => 0,
        'HTTP::Response'             => 0,
        'namespace::clean'           => '0.08',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'MooseX-Types-HTTP-*' },
);
