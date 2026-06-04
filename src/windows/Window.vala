namespace App.Windows {
    using Adw;
    using Gtk;
    public class Window : Adw.ApplicationWindow {

        Adw.ToolbarView toolbar_view { get; set; }

        public Window () {
            Object (application: (Adw.Application) GLib.Application.get_default (), title: Config.APP_NAME);
            build_ui ();
        }

        private void build_ui () {
            var header = new Header.Box ();
            // var content = new Content.Box ();

            // set_titlebar (header);
            // set_child (content);

            toolbar_view = new Adw.ToolbarView ();
            toolbar_view.add_top_bar (header);
            set_content (toolbar_view);
            // toolbar_view.set_content (content);
        }

        public void append (Gtk.Widget widget) {
            this.set_child (widget);
        }
    }
}