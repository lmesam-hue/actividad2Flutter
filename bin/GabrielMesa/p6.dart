class Serie {
  int limite;
  Serie(this.limite);

  List<int> calcular() {
    List<int> valores = [];
    int a = 1;
    int b = 1;
    while (a <= limite) {
      valores.add(a);
      int siguiente = a + b;
      a = b;
      b = siguiente;
    }
    return valores;
  }

  void dataShow() {
    print("Serie hasta $limite: ${calcular().join(' ')}");
  }
}

void main() {
  Serie s1 = Serie(100);
  s1.dataShow();
}
