public static int main (string[] args) {
	string haystack = ". -..- - . .-. -- .. -. .- - ."; 
	int index = 0;

	// Output: ``0 3 4 9 11 13 18 19 22 24 29 -1``
	do {
		index = haystack.index_of_char ('.', index);
		stdout.printf ("%d ", index);
	} while (index++ >= 0);
	stdout.putc ('\n');
	return 0;
}
