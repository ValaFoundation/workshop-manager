namespace App { 
    public class Application : Adw.Application {

        public Application () {
            Object (
                application_id: Config.APP_ID,
                flags: ApplicationFlags.DEFAULT_FLAGS
            );
        }

        protected override void activate () {
            var label = new Gtk.Label ("Hello Again World!");
    
            var main_window = new Gtk.ApplicationWindow (this) {
                child = label,
                default_height = 300,
                default_width = 300,
                title = _ ("Hello World")
            };
            main_window.present ();
        }
    }
}