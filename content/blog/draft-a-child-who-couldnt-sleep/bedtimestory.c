#include <stdio.h>

/*
 * A child couldn't sleep, so her mother told a story about a little frog,
  who couldn't sleep, so the frog's mother told a story about a little bear,
    who couldn't sleep, so the bear's mother told a story about a little weasel,
      ... who fell asleep.
    ... and then the little bear fell asleep;
  ... and then the little frog fell asleep;
... and then the child fell asleep.    
*/

void bedtimestory(char words[20][15], int current, int number) {
	// First line
	if (current == 0)  {
		printf("A %s couldn't sleep, so her mother told her a story about a little %s,\n", words[0], words[1]);
		bedtimestory(words, current+1, number);
		printf("... and then the %s fell asleep.\n", words[0]);
	}
	// Every other line
	else if (current < number-1) {
		printf("%*who couldn't sleep, so the %s's mother told a story about a little %s,\n", current * 2, words[current], words[current+1]);
		bedtimestory(words, current+1, number);
		printf("%*s... and then the little %s fell asleep;\n", current * 2, " ", words[current]);
	}
	// Last line
	else if (current == number-1) {
		printf("%*s... who fell asleep.\n", current * 2, " ");
	}
}

int main() {
	int num = 4;
	char names[4][15] = { "child", "frog", "bear", "weasel" };
	bedtimestory(names, 0, num);
}
