Your task is to implement a record `circularBuffer` that has the following methods

- `clear()`: empties the buffer.
- `write(item)`: adds the given item to the buffer. If the buffer is full, it should throw `Error("Cannot write to full buffer.")`.
- `read()`: removes the oldest element from the buffer and returns it. If the buffer is empty, it should throw `Error("Cannot read from an empty buffer.")`.
- `overwrite(item)`: If the buffer is full, it overwrites `item` in place of the oldest element. If the buffer is not full, it behaves as `write`.
