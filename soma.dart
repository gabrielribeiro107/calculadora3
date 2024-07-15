void main() {
  print(soma(3, 6));
  num resultado = soma(10, 5);
  print(resultado);
  soma(10, 5);
  soma(1, 4);
  soma(9, 3);
}

num soma(num a, num b) {
  print(a + b); // não é recomendado
  return a + b;
}
