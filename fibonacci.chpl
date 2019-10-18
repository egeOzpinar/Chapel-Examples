iter fibonacci(n: int) {
  var (current, next) = (1,1);
  for 1..n {
    yield current;
    current, next = next, current+next;
  }
}

//Usage
// for (i, j) in zip(1.., fibonacci(10)) {
//   write(i);
// }
