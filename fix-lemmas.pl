# fix-lemmas.pl

use strict;

my $pattern = "class\\(hw\\).*?<hi rend=sc>(.*?)<\/hi>";
# my $pattern = "id=[a-z_-]+><hi rend=sc>(.*?)<\/hi>";
# my $pattern = "<hi rend=sc>(.*?)<\/hi>";

my $word = "#";

while(<>)
{
    my $line = $_;
    if ($line =~ /$pattern/i)
    {
        $word = $1;
        print STDERR " MATCHED: " . $word . "\n";
    }
    $line =~ s/\#/$word/g;
    print $line;
}
