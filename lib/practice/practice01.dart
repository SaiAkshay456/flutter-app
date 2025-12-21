Future<int> getNum() async {
  await Future.delayed(const Duration(seconds: 2));
  return 4;
}

void main() async {
  print(await getNum());
}
