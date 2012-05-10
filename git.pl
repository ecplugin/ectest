my $command = qq{git log -1 --pretty=format:"%H|%an|%s|%cd"};
           
my $logResult = qx{$command};
$logResult =~ m/([a-z0-9]+)\|(.*)\|(.*)\|(.*)/gi;

my $snapshot = $1;
my $changelog = join("\n","Author: $2","summary: $3", "date: $4")."\n";

print $changelog;
