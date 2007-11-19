use Test::More tests => 2;
$ENV{CATALYST_DEBUG}=0;
use_ok( 'MojoMojo::Formatter::Emote');
my $content=' :-) ';
MojoMojo::Formatter::Emote->format_content(\$content,MockC);
is($content,' <img src="http://localhost/.static/emote/regular_smile.gif" /> ');

package MockC;

sub req { return MockC::Req; }

package MockC::Req;

sub base { return 'http://localhost' }