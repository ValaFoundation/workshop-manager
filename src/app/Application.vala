namespace App {
    using Adw;
    using Gtk;
    using GLib;
    public class Application : Adw.Application {
        private ProgressBar progress_bar;
        Button download_btn;

        public Application () {
            Object (
                    application_id: Config.APP_ID,
                    flags: ApplicationFlags.DEFAULT_FLAGS
            );
        }

        public override void activate () {
            base.activate ();
            var display = Gdk.Display.get_default ();

            Gtk.IconTheme.get_for_display (display).add_resource_path ("/com/github/JanGalek/vala-application-template");

            var style_manager = Adw.StyleManager.get_default ();
            style_manager.set_color_scheme (Adw.ColorScheme.FORCE_DARK);

            // var label = new Gtk.Label ("Hello Again World!");

            var main_window = new Windows.Window ();
            main_window.present ();
        }

        private async void download_and_extract_process () {
            this.download_btn.sensitive = false; // Deaktivujeme tlačítko během práce

            var downloader = new Utils.Downloader ();

            // Propojení signálu ze stahovače přímo na ProgressBar
            downloader.progress_changed.connect ((pct) => {
                this.progress_bar.fraction = pct;
            });

            string archive_name = "g3_mod.tar.xz";
            string cache_dir = Path.build_filename (Environment.get_user_cache_dir (), "universal-workshop");
            string archive_path = Path.build_filename (cache_dir, archive_name);
            string game_path = "/cesta/k/Gothic 3"; // Zde dosadíme reálnou cestu

            try {
                this.progress_bar.text = "Stahování…";
                yield downloader.download_async ("https://example.com/g3_mod.tar.xz", archive_path);

                this.progress_bar.text = "Zálohování a rozbalování…";
                this.progress_bar.pulse (); // Nastavit neurčitý režim (běhající kostička)

                /**
                   var extractor = new Extractor ();
                   yield extractor.extract_mod_async (archive_path, game_path, "g3_sample_mod");
                 */
                this.progress_bar.fraction = 1.0;
                this.progress_bar.text = "Hotovo!";
            } catch (Error e) {
                this.progress_bar.text = "Chyba: " + e.message;
            }

            this.download_btn.sensitive = true;
        }
    }
}