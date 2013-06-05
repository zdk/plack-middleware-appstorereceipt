use strict;
use warnings;
use utf8;
use Plack::Builder;

our $VERSION = '0.01';

my $app = sub {
    my $env = shift;
    return [ 200, ['Content-Type','text/html'], ["AppStore In-App Purchases Server, powered by Plack::Middleware::AppStoreReceipt!"] ];
};

builder {
    enable "AppStoreReceipt", allow_sandbox => 1;
    $app;
};
