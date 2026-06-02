project('io.github.JanGalek.vala-application-template', 'vala', 'c',
    version: '0.1.0',
    meson_version: '>= 1.0.0'
)

reponame = meson.project_name().split('.')[3].to_lower()

# Include the translations module
i18n = import('i18n')
gnome = import('gnome')
valac = meson.get_compiler('vala')

src_dir = meson.project_source_root() / 'src'

config_h = configuration_data()
config_h.set_quoted('APP_NAME', reponame)
config_h.set_quoted('APP_ID', meson.project_name())
config_h.set_quoted('APP_VERSION', meson.project_version())
config_h.set_quoted('LOCALE_DIR', join_paths (get_option('prefix'), get_option('localedir')))
configure_file(output : 'config.h', configuration : config_h)

config_dep = valac.find_library ('config', dirs: src_dir)
config_inc = include_directories('.')

vapi_dir = join_paths(meson.project_source_root(), 'vapi')
add_project_arguments(['--vapidir', vapi_dir], language : 'vala')

# Set our translation domain
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')


subdir('src')
subdir('data')
subdir('po')
