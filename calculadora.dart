import 'dart:io';

void main() {
  
  print("\nCALCULADORA\n");

  
  stdout.write("Informe o primeiro número: ");
  var linha = stdin.readLineSync()!; 
  var numero1 = double.parse(linha); 

  
  stdout.write("Informe o segundo número: ");
  linha = stdin.readLineSync()!;
  var numero2 = double.parse(linha);

  
  stdout.write("\nInforme a operação (+,-,*,/)  ");
  var operacao = stdin.readLineSync()!;

  
  num resultado = 0;

  
  if (operacao == "+") {
    resultado = soma(numero1,numero2);
  } else if (operacao == "-") {
    resultado = subtracao(numero1,numero2);
  } else if (operacao == "*") {
    resultado = multiplicacao(numero1,numero2);
  } else if (operacao == "/") {
    resultado = divisao(numero1,numero2);
  } else {
    
    print("\nOperação Inválida\n");
    exit(0);
  }
print("A operação realizada foi: $numero1 $operacao $numero2");
print ("O resultado da operaçãoé: $resultado");
}

//funções
num soma (num a, b){
 return a + b;
}

num subtracao(num a, num b){
  return a - b;
}

num multiplicacao( num a, num b){
  return a * b;
}

num divisao(num a, num b){
  return a / b;
}