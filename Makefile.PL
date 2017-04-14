use 5.6.0;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Tree::Simple::View',
    AUTHOR             => q{Mario Zieschang <mziescha@cpan.org>},
    VERSION_FROM       => 'lib/Tree/Simple/View.pm',
    LICENSE            => 'perl',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.6.0,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    PREREQ_PM => {
        'Tree::Simple'     => 1.07,
        'Scalar::Util'     => 1.18,
        'Class::Throwable' => 0.10
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources   => {
            repository => {
                type => 'git',
                url  => 'https://github.com/mziescha/tree-simple-view.git',
                web  => 'https://github.com/mziescha/tree-simple-view',
            },
        }
    },
    TEST_REQUIRES => {
        'Test::More'       => 0.47,
        'Test::Exception'  => 0.15,
        'Test::LongString' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Tree-Simple-View-*' },
);
