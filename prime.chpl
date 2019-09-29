proc is_prime(n: int) {
  var i=3;
  if n<2 then return 0;
  if n!=2 && n%2==0 then return 0;
  while i<=n/2 {
    if n%i==0 {
     return 0;
    }
    i+=2;
  }
  return 1;
}


proc prime_numbers(n: int) {
  for i in 2..n {
    if is_prime(i){
      writeln(i);
    }
  }
}

iter prime_iter(n: int) {
  for i in 2..n {
    if is_prime(i){
      yield i;
    }
  }
}

config const x: int; // chpl prime.chpl && ./prime --x=50;
for i in prime_iter(x) do writeln(i); // prints prime numbers 2 to x
