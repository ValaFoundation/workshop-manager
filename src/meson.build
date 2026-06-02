sources = files(
    'main.vala', 
)

subdir('widgets')

# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    reponame,
    sources,
    dependencies: [
        dependency('gtk4'),
        dependency('glib-2.0'),
        dependency('libadwaita-1', version: '>= 1.6'),
        meson.get_compiler('c').find_library('m', required : false),
        config_dep,
    ],
    include_directories : config_inc,
    vala_args: ['--pkg', 'libadwaita-1'],
    install: true
)