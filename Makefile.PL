use inc::Module::Install;
name 'Kanata-Task-BeLike-Akimichi';
all_from 'lib/Kanata/Task/BeLike/Akimichi.pm';

sub say { print "@_\n" }

# install some XS modules
requires 'HTML::Parser' => 3.56;
requires 'IO::Socket::SSL' => 0;
recommends 'Imager'            => 0.67;
recommends 'Imager::File::PNG' => 0.67;
recommends 'Image::ExifTool' => 7.67;
recommends 'DBD::mysql'      => 4.007;

# application
requires 'App::Ack'         => '1.88';    # 5.10 fix
requires 'Module::CoreList' => 2.17;
requires 'ShipIt'           => 0.52;
requires 'App::cpanoutdated';

# core modules
requires 'Mouse'              => 0.91;    # older version missing some functions
requires 'Encode'             => 2.31;
requires 'DateTime'           => 0.4501;
requires 'List::AllUtils'     => 0.02; # to use List::Util and List::MoreUtils
requires 'Email::MIME'        => '1.861';
requires 'Email::Simple'      => '2.005';
requires 'Email::Send'        => 2.194;
requires 'Email::Sender'        => 0.110001;
requires 'Scalar::Util'       => 1.19;    # bug fix at 1.18
requires 'UNIVERSAL::require' => 0.11;    # newer version is optimized
requires 'Class::Accessor'       => 0.31;
requires 'Class::Trigger'        => 0.13;
requires 'Class::MOP' => '1.12';
requires 'File::Spec'            => 3.29;
requires 'File::Temp'          => 0.21;   # some feature added in recent version
requires 'Exporter'            => 5.63;   # use Exporter 'import' support
requires 'Time::HiRes'         => 1.9711;
requires 'URI'                 => 1.37;
requires 'Email::Valid::Loose' => 0.05;
requires 'Data::Clone' => 0.003;
requires 'namespace::autoclean' => 0.12;
requires 'Switch' => '2.16';

# development tools
requires 'CPAN'                           => '1.9301';
requires 'CPAN::Mini'                     => '0.571';
requires 'Devel::NYTProf'                 => 2.08;
requires 'Module::Install'                => 0.97;
requires 'Module::Install::AuthorTests'   => 0.002;
requires 'Module::Install::AuthorRequires' => 0.002;
requires 'Module::Install::ReadmeFromPod' => 0.02;
requires 'Module::Install::ReadmeMarkdownFromPod' => 0.02;
requires 'Module::Install::Repository'    => 0.02;
requires 'Module::Install::XSUtil'        => 0.32;
requires 'Module::Install::TestTarget'    => 0.01;
requires 'Perl::Critic'                   => 1.096;
requires 'Perl::Tidy'                     => 20071205;
requires 'Plack'                          => '0.9021';
requires 'Starlet'                        => 0.08;
requires 'Test::WWW::Mechanize::PSGI'     => 0.01;
requires 'Filesys::Notify::Simple'        => 0.01;
requires 'Carp::Always';

# test tools
requires 'Test::Perl::Critic' => 1.01;
requires 'Test::Base'         => 0.55;
requires 'Test::Harness'      => 3.14;
requires 'Test::Pod'          => 0;
requires 'Test::Requires'     => 0;
requires 'Test::MockObject'   => 1.09;

# web development
requires 'Text::MicroTemplate'         => 0.05;
requires 'Text::Xslate'                => 0.1054;
requires 'Text::Xslate::Bridge::TT2Like' => 0.00008;
requires 'JSON'                        => 2.21;   # 2.xx is wrapper for JSON::XS
requires 'JSON::XS'                    => 2.231;
requires 'DBD::SQLite'                 => 1.14;
requires 'Data::UUID'                  => 1.149;
requires 'Cache::Memcached::Fast'      => 0.14;
requires 'HTML::FillInForm'            => 2.00;
requires 'HTML::StickyQuery'           => 0.12;
requires 'DBIx::Skinny'                => 0.0701;
requires 'DBIx::Skinny::Schema::Loader' => 0.22;
requires 'Data::Section::Simple'; # slurp from <DATA>
requires 'Text::CSV'                   => 1.21;
requires 'Text::CSV_XS'                => 0.82;
requires 'Data::Page'                  => 2.02;
requires 'Data::Page::Navigation'      => 0.05;
requires 'FormValidator::Lite'         => 0.24;
requires 'JavaScript::Value::Escape'   => 0.05;

# mobile-jp programming
requires 'HTTP::MobileAgent'             => 0.29;
requires 'Encode::JP::Mobile'            => 0.25;
requires 'Net::CIDR::MobileJP'           => 0.16;
requires 'HTML::StickyQuery::DoCoMoGUID' => 0.01;
requires 'Email::Address::JP::Mobile'    => 0.08;

# xml/html
requires 'XML::XPath'                => 0.13;
requires 'XML::LibXML'               => 1.69;  # bug fixed in 1.69
requires 'HTML::TreeBuilder'         => 3.23;
requires 'HTML::TreeBuilder::XPath'  => 0.09;
requires 'HTML::TreeBuilder::LibXML' => 0.09;
requires 'Web::Scraper'              => 0.26;  # better err message in 0.26
requires 'XML::Atom'                 => 0.33;
requires 'XML::RSS::LibXML'          => 0.3004;
requires 'XML::Feed'                 => 0.41;  # older version is dangerous :)

# utilities
requires 'Params::Validate' => 0.91;
requires 'File::HomeDir'    => 0.82;
requires 'File::ShareDir'   => 1.00;
requires 'Path::Class';
requires 'String::CamelCase' => 0.01;
requires 'String::Random'    => 0.22;
requires 'Term::ReadLine::Gnu';
requires 'Config::Pit';
requires 'Getopt::Long';
requires 'Filesys::Notify::Simple' => '0.07';
requires 'Text::Truncate' => '1.04';
requires 'Number::Format' => '1.73';
requires 'IPC::Cmd' => '0.70';
requires 'File::Which' => '1.09';
requires 'Log::Handler' => '0.71';
requires 'Smart::Args' => '0.10';
requires 'Smart::Comments' => '1.0.4';


# internet
requires 'LWP::UserAgent' => '6.02';
requires 'Crypt::SSLeay' => '0.58';

# language
requires 'Lingua::JA::Moji' => 0.05;

# math
requires 'Math::Random::MT' => 1.12;
requires 'bignum' => '0.25';

# algorithm
requires 'Crypt::SaltedHash' => '0.05';


if ($^O eq 'linux') {
    # this makes mofe faster some modules.
    requires 'Linux::Inotify2';
} elsif ($^O eq 'darwin') {
    # this makes mofe faster some modules.
    requires 'Mac::FSEvents';
}

tests 't/*.t';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
