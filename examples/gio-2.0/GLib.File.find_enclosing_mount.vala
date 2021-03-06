public static int main (string[] args) {
	try {
		File file = File.new_for_commandline_arg (args[0]);
		Mount mount = file.find_enclosing_mount ();
		stdout.printf ("%s\n", mount.get_name ());
	} catch (Error e) {
		stdout.printf ("Error: %s\n", e.message);
	}
	return 0;
}
