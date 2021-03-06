public class Application : Gtk.Window {
	public Application () {
		// Prepare Gtk.Window:
		this.title = "My Gtk.SeparatorMenuItem";
		this.window_position = Gtk.WindowPosition.CENTER;
		this.destroy.connect (Gtk.main_quit);

		// MenuBar:
		Gtk.MenuBar bar = new Gtk.MenuBar ();
		this.add (bar);

		// File:
		Gtk.MenuItem item_file = new Gtk.MenuItem.with_label ("File");
		bar.add (item_file);

		Gtk.Menu filemenu = new Gtk.Menu ();
		item_file.set_submenu (filemenu);

		Gtk.MenuItem item_open = new Gtk.MenuItem.with_label ("Open");
		filemenu.add (item_open);

		Gtk.SeparatorMenuItem separator = new Gtk.SeparatorMenuItem ();
		filemenu.add (separator);

		Gtk.MenuItem item_exit = new Gtk.MenuItem.with_label ("Exit");
		item_exit.activate.connect (Gtk.main_quit);
		filemenu.add (item_exit);
	}

	public static int main (string[] args) {
		Gtk.init (ref args);

		Application app = new Application ();
		app.show_all ();
		Gtk.main ();
		return 0;
	}
}
