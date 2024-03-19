class MathOps<T, G> {

  num? sub(T obj1, G obj2) {
    if (obj1 is int && obj2 is int) {
      return (obj1 as int) - (obj2 as int);
    } else if (obj1 is double && obj2 is double) {
      return (obj1 as double) - (obj2 as double);
    }
      else if (obj1 is double && obj2 is int) {
      return (obj1 as double) - (obj2 as int);
    }
      else if (obj1 is int && obj2 is double) {
      return (obj1 as int) - (obj2 as double);
    }

    print("Tipuri incompatibile pentru scadere!");
    return null;
  }

  num? prod(T obj1, G obj2) {
    if (obj1 is int && obj2 is int) {
      return (obj1 as int) * (obj2 as int);
    } else if (obj1 is double && obj2 is double) {
      return (obj1 as double)  * (obj2 as double);
    }
      else if (obj1 is double && obj2 is int) {
      return (obj1 as double) * (obj2 as int);
    }
      else if (obj1 is int && obj2 is double) {
      return (obj1 as int) * (obj2 as double);
    }
    
    print("Tipuri incompatibile pentru inmultire!");
    return null;
  }

  num? mod(T obj1, G obj2) {
    if (obj1 is int && obj2 is int) {
      return (obj1 as int) % (obj2 as int);
    } else if (obj1 is double && obj2 is double) {
      return (obj1 as double).toInt() % (obj2 as double).toInt();
    }
      else if (obj1 is double && obj2 is int) {
      return (obj1 as double).toInt() % (obj2 as int);
    }
      else if (obj1 is int && obj2 is double) {
      return (obj1 as int) % (obj2 as double).toInt();
    }

    print("Tipuri incompatibile pentru modulo!");
    return null;
  }
}

void main() {
  MathOps mathOps = MathOps();

  print(mathOps.sub(5, 3));
  print(mathOps.sub(5.5, 2.5));
  print(mathOps.sub(5, 2.5));
  print(mathOps.sub(5.5, 2));
  print(mathOps.sub('abc', 2));

  print(mathOps.prod(2, 3));
  print(mathOps.prod(2.5, 3.0));
  print(mathOps.prod(2, 3.0));
  print(mathOps.prod(2.5, 3));
  print(mathOps.prod('abc', 2));

  print(mathOps.mod(5, 3));
  print(mathOps.mod(5.5, 2.5));
  print(mathOps.mod(5, 2.5));
  print(mathOps.mod(5.5, 2));
  print(mathOps.mod('abc', 2));
}
