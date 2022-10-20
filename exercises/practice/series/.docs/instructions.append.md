Implement a function called `slices` that returns an array of strings as described above.
Your function should throw an `IllegalArgumentError` with appropriate error mesaage as follow:
- if the given string is empty, error with message `series cannot be empty`
- if the slice length is negative, error with message `slice length cannot be negative`
- if the slice length is zero, error with message `slice length cannot be zero`
- if the slice length exceeds the string length, error with message `slice length can not be greater than series length`.
