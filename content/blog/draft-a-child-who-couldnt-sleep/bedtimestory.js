/*
 * A child couldn't sleep, so her mother told a story about a little frog,
  who couldn't sleep, so the frog's mother told a story about a little bear,
    who couldn't sleep, so the bear's mother told a story about a little weasel,
      ... who fell asleep.
    ... and then the little bear fell asleep;
  ... and then the little frog fell asleep;
... and then the child fell asleep.    
*/

function bedtimestory(words, current, number) {
	var indent = "  ".repeat(current);

	// First line
	if (current == 0)  {
		console.log("A %s couldn't sleep, so her mother told her a story about a little %s,", words[0], words[1]);
		bedtimestory(words, current+1, number);
		console.log("... and then the %s fell asleep.", words[0]);
	}
	// Every other line
	else if (current < number-1) {
		console.log("%swho couldn't sleep, so the %s's mother told a story about a little %s,", indent, words[current], words[current+1]);
		bedtimestory(words, current+1, number);
		console.log("%s... and then the little %s fell asleep;", indent, words[current]);
	}
	// Last line
	else if (current == number-1) {
		console.log("%s... who fell asleep.", indent, " ");
	}
}

function main() {
	var names = [
		"child",
		"frog",
		"bear",
		"weasel",
		"elephant",
		"tiger",
		"monkey",
		"mouse",
		"cat",
		"rabbit",
		"bird",
	];

	bedtimestory(names, 0, names.length);
}

main();
