use inc::Module::Install;
name 'Kanata-Task-BeLike-Akimichi';
all_from 'lib/Kanata/Task/BeLike/Akimichi.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
