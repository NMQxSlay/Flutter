import 'dart:math';

void main() {
  // a. Tính tổng các số từ 1 đến n
  int n = 10;
  int sum = 0;
  for (int i = 1; i <= n; i++) sum += i;
  print("Tổng các số từ 1 đến $n là: $sum");

  // b. Tìm nghiệm của phương trình bậc 2
  double a = 1;
  double b = -3;
  double c = 2;
  double delta = b * b - 4 * a * c;
  List<double> roots = [];

  if (delta == 0) {
    roots.add(-b / (2 * a));
  } else if (delta > 0) {
    double sqrtDelta = sqrt(delta);
    roots.add((-b + sqrtDelta) / (2 * a));
    roots.add((-b - sqrtDelta) / (2 * a));
  }

  print("Nghiệm của phương trình: $roots");

  // c. Tính giai thừa của một số nguyên dương
  int num = 5;
  int factorial = 1;
  for (int i = 2; i <= num; i++) factorial *= i;
  print("$num! = $factorial");

  // d. Tìm ước chung lớn nhất của 2 số nguyên dương
  int num1 = 24;
  int num2 = 36;
  while (num2 != 0) {
    int temp = num2;
    num2 = num1 % num2;
    num1 = temp;
  }
  int gcd = num1;
  print("Ước chung lớn nhất của $num1 và $num2 là: $gcd");

  // e. Đảo ngược một chuỗi
  String input = "HUMG";
  String reversed = input.split('').reversed.join();
  print("Chuỗi đảo ngược: $reversed");
}
