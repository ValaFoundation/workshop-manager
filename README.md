

## Building

### Requirements
- `git`
- `ninja`
- [`meson >= 1.0.0`](https://mesonbuild.com/)
- `vala`
- `gtk4`
- `libadwaita >= 1.9`
- `json-glib`
- `libsoup-3.0`
- `libarchive`
- `desktop-file-utils`
- `libgee`
- `make`


### Build instructions

<details>
  <summary>Native Build</summary>

1. **Install dependencies** (Fedora):
    ```bash
    sudo dnf install make git gettext 'meson >= 1.0.0' vala desktop-file-utils libappstream-glib \
      'pkgconfig(gee-0.8)' 'pkgconfig(glib-2.0)' 'pkgconfig(gtk4)' 'pkgconfig(json-glib-1.0)' \
      'pkgconfig(libadwaita-1) >= 1.9' 'pkgconfig(libarchive)' 'pkgconfig(libsoup-3.0)' \
      'pkgconfig(sdl3)' 'pkgconfig(libnotify)'
    ```

2. **Clone the repository**:
    ```bash
    git clone https://github.com/JanGalek/workshop-manager.git
    cd workshop-manager
    ```

3. **Build and run**:
    ```bash
    make build-run
    ```

4. **Install (Optional)**:
    ```bash
    make install
    ```
</details>
