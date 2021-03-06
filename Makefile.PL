use 5.008000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'List::BinarySearch::INXS',
    VERSION_FROM        => 'lib/List/BinarySearch/INXS.pm', # finds $VERSION
    PREREQ_PM           => {},
    MIN_PERL_VERSION    => '5.008000',
    ($] >= 5.005 ?                      # New keywords supported since 5.005
      (ABSTRACT_FROM    => 'lib/List/BinarySearch/INXS.pm', # Retrieve abstract
       AUTHOR           => 'David Oswald <davido [@at] cpan [d.o.t.] org>') : ()),
    LICENSE             => 'perl',
#    LIBS                => [''],
#    DEFINE              => '',
#    INC                 => '-I.',
    CONFIGURE_REQUIRES  => {
      'ExtUtils::MakeMaker' => '6.62',  # Core, but updated version.
    },
    BUILD_REQUIRES      => {
      'Test::More'  => '0.98',          # Core, but we use newer semantics.
    },
    META_MERGE          => {
        'meta-spec' => { version => 2 },
        resources   => {
            repository  => {
                type  => 'git',
                url   => 'https://github.com/daoswald/List-BinarySearch-INXS.git',
                web   => 'https://github.com/daoswald/List-BinarySearch-INXS',
            },
        },
        provides    => {
            'List::BinarySearch::INXS' => {
                file    => 'lib/List/BinarySearch/INXS.pm',
                version => '0.01',
            },
        },
    },
);
