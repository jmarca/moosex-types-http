package MooseX::Types::HTTP;

use warnings;
use strict;
use Carp;

use version; our $VERSION = qv('0.0.1');


use HTTP::Response;
use HTTP::Request;

use Moose::Util::TypeConstraints;

use namespace::clean;

use MooseX::Types -declare => [qw(HttpRequest HttpResponse)];

class_type HttpRequest,  { class => "HTTP::Request" };
class_type HttpResponse, { class => "HTTP::Response" };

1;
__END__

=head1 NAME

MooseX::Types::HTTP - L<HTTP> related types and coercions for Moose

=head1 VERSION

This document describes MooseX::Types::HTTP version 0.0.1


=head1 SYNOPSIS

	use MooseX::Types::HTTP qw(HttpRequest HttpResponse);

=head1 DESCRIPTION

This package provides Moose types for HTTP::Response, and
HTTP::Request, and related packaes as I get to them and need them

=head1 TYPES

=over 4

=item HttpRequest

maps to   L<HTTP::Request>

does not coerce at this time

=item HttpResponse

maps to   L<HTTP::Response>

does not coerce at this time


=back

=head1 TODO

everything else as I get to it.  I just fumbled around cpan and copied
the approach from L<MooseX::Types::URI>

=head1 VERSION CONTROL

L<http://github.com/jmarca/moosex-types-http/>

=head1 DIAGNOSTICS
none

=head1 CONFIGURATION AND ENVIRONMENT

MooseX::Types::HTTP requires no configuration files or environment variables.


=head1 DEPENDENCIES

L<HTTP::Request>, L<HTTP::Response>

=head1 INCOMPATIBILITIES

None reported.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to github

=head1 AUTHOR

James E. Marca  C<< <jmarca@translab.its.uci.edu> >>


=head1 LICENSE AND COPYRIGHT

Copyright (c) 2010, James E. Marca C<< <jmarca@translab.its.uci.edu> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
