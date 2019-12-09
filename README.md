# Validate-Password

Write a script to check and validate passwords. The objective is to flag "weak" for
easily guessed password candidates.
A trial password will be input to the script as a command-line parameter. (can
use
suppressed input type to hide the password) To be considered acceptable, a
password
must meet the following minimum qualifications:
● Minimum length of 8 characters
● Must contain at least one numeric character
● Must contain at least one of the following non-alphabetic characters: @, #, $,
%, &, *,
+, -, =
[Bonus : Do a dictionary check on every sequence of at least four consecutive
alphabetic characters in the password under test. This will eliminate passwords
containing embedded "words" found in a standard dictionary.]
