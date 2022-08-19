import 'dart:io';

bool eNumero(String string) {
  if (double.tryParse(string) == null) {
    return false;
  }
  return true;
}

void main() {
  print("Digite um numero inteiro positivo: ");
  String numero = stdin.readLineSync()!;

  while (eNumero(numero) == false ||
      double.parse(numero).isNegative ||
      double.parse(numero) % 2 != 0.0 && double.parse(numero) % 2 != 1.0) {
    print("Numero invalido. Digite outro numero inteiro positivo: ");
    numero = stdin.readLineSync()!;
  }

  int soma = 0;
  for (var i = 0; i < double.parse(numero); i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma = soma + i;
    }
  }

  print("A soma dos valores divisíveis por 3 e 5 entre 1 e $numero é: ");
  print(soma);
}
