use strict;
use warnings;
use Getopt::Long;
use FindBin;
use File::Spec;
use File::Temp;
use Module::CoreList;
use YAML;

my $format = 'CPANPLUS::Dist::Deb';
my @ignores = qw(
    ^Image::Magick
    ^DBD::
    ^GD$
    ^XML::LibXML
    ^Imager$
    ^Image::ExifTool$
    ^HTML::Parser$
    ^DBD::mysql$
    ^FCGI$
    ^IO::Socket::SSL$
    ^Devel::Cover$
);
my @modules = do {
    my $metafile = File::Spec->catfile($FindBin::Bin, '..', 'META.yml');
    die "create meta.yaml first" unless -f $metafile;
    my $meta = YAML::LoadFile($metafile);
    keys(%{$meta->{requires}}), keys(%{$meta->{recommends}});
};
push @ignores, map { "^${_}\$" } keys %{$Module::CoreList::version{'5.009004'}};

&main;exit;

sub main {
    GetOptions(
        'format=s' => \$format,
    );
    my $ignore = File::Temp->new(UNLINK => 1);
    $ignore->print(join "\n", @ignores);
    my @cmd = (
        'cpan2dist',
        '--format' => $format,
        '--ignorelist' => $ignore->filename,
        '--buildprereq',
        @modules
    );
    system(@cmd);
}

