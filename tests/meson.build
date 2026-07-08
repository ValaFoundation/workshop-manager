test_env = environment()
test_sources = files(
  'main.vala',
  'example_test.vala',
)

vala_testcases_dep = dependency('vala_testcases', fallback: ['vala_testcases', 'vala_testcases_dep'])

test_exe = executable('tests',
  test_sources,
  dependencies: [app_deps, vala_testcases_dep],
  link_with: app_lib,
  include_directories: [include_directories('../src')],
  vala_args: ['--target-glib=2.58'],
)

test('Unit Tests', test_exe, env: test_env, protocol: 'tap')

