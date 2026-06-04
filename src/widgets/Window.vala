namespace App.Widgets {
    using Adw;
    using Gtk;
    public class Window : Adw.ApplicationWindow {


        public Window () {
            Object (application: (Adw.Application) GLib.Application.get_default (), title: Config.APP_NAME);
        }

        public void append (Adw.Dialog widget) {
            widget.present (this);
        }
    }
}