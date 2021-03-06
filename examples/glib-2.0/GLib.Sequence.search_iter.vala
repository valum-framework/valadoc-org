public static int main (string[] args) {
	Sequence<string> seq = new Sequence<string> ();
	// sorted data:
	seq.append ("1. Lorem");
	seq.append ("2. ipsum");
	seq.append ("4. sit");
	seq.append ("5. amet");

	SequenceIter<string> iter = seq.search_iter ("3. dolor", (a, b) => {
		return strcmp (a.get (), b.get ());
	});

	// Output: ``4. sit``
	stdout.printf ("%s\n", iter.get ());

	return 0;
}
