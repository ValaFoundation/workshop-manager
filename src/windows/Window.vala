namespace App.Windows {
    using Adw;
    using Gtk;
    public class Window : Adw.ApplicationWindow {

        Adw.ToolbarView toolbar_view { get; set; }
        protected Gtk.Box content_box { get; set; }

        public Window () {
            Object (application: (Adw.Application) GLib.Application.get_default (), title: Config.APP_NAME);
            build_ui ();
        }

        private void build_ui (owned Gtk.Box? content = null) {
            var header = new Header.Box ();
            if (content == null) {
                content = new Content.Box ();
            }

            set_content_view (content);

            toolbar_view = new Adw.ToolbarView ();
            toolbar_view.add_top_bar (header);
            toolbar_view.set_content (content);
            set_content (toolbar_view);
        }

        public void set_content_view (Gtk.Box content) {
            this.content_box.destroy ();
            this.content_box = content;
            toolbar_view.set_content (content);
        }

        public void append (Gtk.Widget widget) {
            this.set_child (widget);
        }
    }
}