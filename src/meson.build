sources = files()

subdir('app')
subdir('dialogs')
subdir('widgets')
subdir('utils')
subdir('windows')

sources_app = files(
    'main.vala', 
)

deps = [
    config_dep,
    dependency('gtk4'),
    dependency('glib-2.0'),
    dependency('gio-2.0'),
    dependency('gobject-2.0'),
    dependency('gee-0.8'),
    dependency('libarchive'),
    dependency('glib-2.0'),
    dependency('libsoup-3.0'),
    dependency('libadwaita-1', version: '>= 1.9'),
    meson.get_compiler('c').find_library('m', required : false),
]

app_lib = static_library(
    'app_core',
    resources,
    sources,
    dependencies : deps,
    include_directories : config_inc,
    install : false
)

executable(
    reponame,
    resources,
    sources_app,
    dependencies: deps,
    link_with: app_lib,
    include_directories : config_inc,
    vala_args: ['--pkg', 'libadwaita-1'],
    install: true
)