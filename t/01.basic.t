#!/usr/bin/perl

use warnings;
use strict;

use Test::Most tests => 7;

use HTTP::Request;
use HTTP::Response;
use Moose::Util::TypeConstraints;
use  LWP::UserAgent;


use ok 'MooseX::Types::HTTP'=> => qw(HttpRequest HttpResponse);


ok defined &HttpRequest, 'HttpRequest' ;
ok defined &HttpResponse, 'HttpResponse' ;

ok( my $check_response = find_type_constraint(HttpResponse),
    'find HttpResponse' );
ok( my $check_request = find_type_constraint(HttpRequest), 
    'find HttpRequest' );

my $ua = LWP::UserAgent->new;
$ua->timeout(10);
$ua->env_proxy;

my $request = HTTP::Request->new(GET => 'http://search.cpan.org/');
ok($check_request->check($request), 'request for cpan');

my $response = $ua->request($request);
ok($check_response->check($response), 'response from cpan');


1;

