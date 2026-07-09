sources = files()

subdir('app')
subdir('dialogs')
subdir('models')
subdir('widgets')
subdir('utils')
subdir('windows')

sources_app = files(
    'main.vala', 
)

vala_downloader_dep = dependency('vala_downloader', fallback: ['vala-downloader-lib', 'vala_downloader_dep'])
cache_manager_dep = dependency('cache_manager', fallback: ['cache-manager', 'cache_manager_dep'])

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
    vala_downloader_dep,
    cache_manager_dep,
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

app_deps = declare_dependency(
    link_with: app_lib,
    include_directories: include_directories('.'),
    dependencies: deps,
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