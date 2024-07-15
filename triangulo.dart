import "dart:io";

void main() {
  // Imprime o título
  print("TRIANGULO");

  // Solicita e lê o primeiro lado do triângulo
  stdout.write("Digite o primeiro lado do triângulo:");
  var linha = stdin.readLineSync()!;
  var lado1 = num.parse(linha);

  // Solicita e lê o segundo lado do triângulo
  stdout.write("Digite o segundo lado do triângulo:");
  linha = stdin.readLineSync()!;
  var lado2 = num.parse(linha);

  // Solicita e lê o terceiro lado do triângulo
  stdout.write("Digite o terceiro lado do triângulo:");
  linha = stdin.readLineSync()!;
  var lado3 = num.parse(linha);

  // Chama a função ehTriangulo e imprime o resultado
  print(ehTriangulo(lado1, lado2, lado3));
  if (ehTriangulo(lado1, lado2, lado3) == true) {
    print(logo(lado1, lado2, lado3));
  }
}

// Função para verificar se os lados formam um triângulo
bool ehTriangulo(num a, num b, num c) {
  // Verifica se a soma de dois lados é maior que o terceiro lado
  if (a > b + c || c > a + b || b > a + c) {
    return false;  // Se não, não forma um triângulo
  } else {
    return true;   // Caso contrário, forma um triângulo
  }
  // A versão comentada acima é equivalente à versão simplificada abaixo:
  // return !(a > b + c || c > a + b || b > a + c);
}

String logo (num a, num b , num c) {
  if( a == b && c == b) {
    return "Equílatoro";
  }else if (b != a && a != c && b != c) {
    return ("isosceles");
  }else {
    return "Escaleno";
  }
}
