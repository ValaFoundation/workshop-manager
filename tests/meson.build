test_sources = files(
  'main.vala',
  'base.vala',
  'test2.vala',
  'test3.vala',
)

test_exe = executable('tests',
  test_sources,
  dependencies: deps,
  link_with: app_lib,
  include_directories: [include_directories('../src')],
  vala_args: ['--target-glib=2.58'],
)

test('Unit Tests', test_exe, protocol: 'tap')