use strict;
use warnings;

use Plack::Builder;
use IapServer;

my $app = IapServer->apply_default_middlewares(IapServer->psgi_app);
#$app;


builder {
    enable "AppStoreReceipt", allow_sandbox => 1, shared_secret => '9fdea12cac374457b229ec0c6bcf64ac'; #route => { 'post' => '/receipts/validate' }
    $app;
};

