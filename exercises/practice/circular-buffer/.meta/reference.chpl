module CircularBuffer {
  record circularBuffer {
    param size: int;
    var data: [0..#size] int,
        readIdx: int = -1,
        writeIdx: int = 0;

    proc clear() {
      readIdx = -1;
      writeIdx = 0;
    }

    proc write(item: int) throws {
      if writeIdx < 0 then throw new Error("Cannot write to full buffer.");
      data[writeIdx] = item;
      writeIdx = (writeIdx + 1) % size;
      if readIdx == -1 then readIdx = (writeIdx - 1) % size;
      if writeIdx == readIdx then writeIdx = -1;
    }

    proc read() throws {
      if readIdx < 0 then throw new Error("Cannot read from an empty buffer.");
      var item = data[readIdx];
      readIdx = (readIdx + 1) % size;
      if writeIdx == -1 then writeIdx = (readIdx - 1) % size;
      if readIdx == writeIdx then readIdx = -1;
      return item;
    }

    proc overwrite(item: int) {
      if writeIdx == -1 then {
        data[readIdx] = item;
        readIdx = (readIdx + 1) % size;
      } else try! this.write(item);
    }
  }
}
