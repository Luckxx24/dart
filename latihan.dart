import 'dart:io';

void main() {

  print('Masukkan angka 1:');
  String? input1 = stdin.readLineSync();
  
  print('Masukkan angka 2:');
  String? input2 = stdin.readLineSync();
  
  print('Masukkan operator :');
  String? operator = stdin.readLineSync();
  
 
  int angka1 = int.parse(input1!);
  int angka2 = int.parse(input2!);

  double hasil;
  switch (operator) {
    case '+':
      hasil = angka1 + angka2;
      break;
    case '-':
      hasil = angka1 - angka2;
      break;
    case '*':
      hasil = angka1 * angka2;
      break;
    case '/':
     
      if (angka2 == 0) {
        print('Error: Pembagian dengan nol tidak diperbolehkan.');
        return;
      }
      hasil = angka1 / angka2;
      break;
    default:
      print('Operator tidak valid. Harap masukkan salah satu dari +, -, *, /.');
      return;
  }

  print('Hasil: $hasil');
}
