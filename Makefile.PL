use inc::Module::Install;

name           'Jifty-Plugin-CKEditor';
all_from       'lib/Jifty/Plugin/CKEditor.pm';

build_requires 'Test::More';
requires('Jifty' => '0.70416');

install_share;

tests('t/*.t');
author_tests('xt');
auto_install;
WriteAll;
