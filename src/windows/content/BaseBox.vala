namespace App.Windows.Content {
    using Adw;
    using Gtk;

    public class BaseBox : Gtk.Box {
        public BaseBox () {
            Object (orientation: Orientation.VERTICAL, spacing: 0);
        }
    }
}