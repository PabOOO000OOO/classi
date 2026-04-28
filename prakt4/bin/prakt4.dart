//----------------------------------------------------------------------------------------------------------------------------------------------
//1 задание
import 'dart:io';
import 'dart:convert';

class Kruzka{
  void pit(){
    print("глык глык");
  }

}

class Chelovek extends Kruzka{
  String name;
  Chelovek(this.name);
  @override
  void pit(){
    print("$name пьет");
  }
}

//----------------------------------------------------------------------------------------------------------------------------------------------
// 2 задание
class Wardrobe {
  String futbolka;
  String shtani;
  String obuv;
  Wardrobe(this.futbolka,this.shtani,this.obuv);

  void takeTop() => print("Взял из шкафа футболку");
  void takeBottom() => print("Взял из шкафа штаны");
  void takeShoes() => print("Взял из шкафа кроссовки");
}

class User extends Wardrobe {
  String name;
  User(this.name,super.futbolka,super.shtani,super.obuv);
  @override
  void takeTop() {
    print("$name взял из шкафа футболку");
  }
    @override
  void takeBottom() {
    print("$name взял из шкафа штаны");
  }
    @override
  void takeShoes() {
    print("$name взял из шкафа обувь");
  }
}
// void main(){
//   print("--------------------2 задание-------------------");
//   User user=User("Антон", "Футболка", "Штаны", "Обувь");
//     while (true) {
//       print("Выберите что достать из шкафа (1-3): ");
//       String? input = stdin.readLineSync(encoding: utf8);
//       int choice = int.tryParse(input ?? '') ?? 0;

//       switch(choice) {
//         case 1:
//         user.takeTop();
//         break;
//         case 2:
//         user.takeBottom();
//         break;
//         case 3:
//         user.takeShoes();
//         break;
//         case 0:
//         print("Выход");
//         return;
//       }
//     }
// }
//----------------------------------------------------------------------------------------------------------------------------------------------
// 3 задание
class Blin {
  final double weight; // вес блина в кг
  Blin(this.weight);

  @override
  String toString() => 'Блин($weight кг)';
}

class Grif {
  final double maxWeight;   // максимальная грузоподъемность грифа (общая, с двух сторон)
  final List<Blin> left = [];
  final List<Blin> right = [];

  Grif(this.maxWeight);

  // Текущий общий вес на грифе
  double get currentWeight =>
      left.fold(0.0, (sum, blin) => sum + blin.weight) +
      right.fold(0.0, (sum, blin) => sum + blin.weight);

  // Проверка, можно ли добавить блин слева
  bool canAddLeft(Blin blin) => currentWeight + blin.weight <= maxWeight;

  // Проверка, можно ли добавить блин справа
  bool canAddRight(Blin blin) => currentWeight + blin.weight <= maxWeight;

  // Добавить блин слева
  void addLeft(Blin blin) {
    if (canAddLeft(blin)) {
      left.add(blin);
      print('Блин весом ${blin.weight} кг надет слева.');
    } else {
      print('Нельзя надеть блин слева: превышен максимальный вес грифа (${maxWeight} кг).');
    }
  }

  // Добавить блин справа
  void addRight(Blin blin) {
    if (canAddRight(blin)) {
      right.add(blin);
      print('Блин весом ${blin.weight} кг надет справа.');
    } else {
      print('Нельзя надеть блин справа: превышен максимальный вес грифа (${maxWeight} кг).');
    }
  }

  // Показать состояние
  void showStatus() {
    print('Состояние');
    print('Слева: ${left.length} блинов');
    for (var b in left) print('  $b');
    print('Справа: ${right.length} блинов');
    for (var b in right) print('  $b');
    print('Общий вес на грифе: ${currentWeight} кг из максимальных ${maxWeight} кг');
  }
}
//----------------------------------------------------------------------------------------------------------------------------------------------
// 4 задание
class Converter{
  void inputt(){
    print('Введи количествво');
    String kolvovaluta = stdin.readLineSync()!;
    int kolvovalutaint = int.parse(kolvovaluta);
    printt();
    String vibor = stdin.readLineSync()!;
    int viborint = int.parse(vibor);
    print(conv(viborint, kolvovalutaint));
  }


  double conv(vibor, kolvovaluta){
    
    double rubtousd = 0.013;//1
    double rubtoeur = 0.011;//2
    double rubtoyen = 2.12;//3

    double usdtoeur = 0.85;//4
    double usdtoyen = 159.69;//5
    double usdtorub = 75;//6

    double eurtoyen = 186.83;//7
    double eurtousd = 1.17;//8
    double eurtorub = 88;//9

    double yentousd = 0.0062;//10
    double yentoeur = 0.0053;//11
    double yentorub = 47;//12
    switch(vibor){
      case 1: return kolvovaluta*rubtousd;
      case 2: return kolvovaluta*rubtoeur;
      case 3: return kolvovaluta*rubtoyen;
      case 4: return kolvovaluta*usdtoeur;
      case 5: return kolvovaluta*usdtoyen;
      case 6: return kolvovaluta*usdtorub;
      case 7: return kolvovaluta*eurtoyen;
      case 8: return kolvovaluta*eurtousd;
      case 9: return kolvovaluta*eurtorub;
      case 10: return kolvovaluta*yentousd;
      case 11: return kolvovaluta*yentoeur;
      case 12: return kolvovaluta*yentorub;
    }
    return 0;
  }
  void printt(){
    print("1. Рубль к доллару");
    print('2. Рубль к евро');
    print('3. Рубль к ену');
    print('4. Доллар к евро');
    print('5. Доллар к ену');
    print('6. Доллар к рублю');
    print('7. Евро к ену');
    print('8. Евро к доллару');
    print('9. Евро к рублю');
    print('10. Ен к доллару');
    print('11. Ен к евро');
    print('12. Ен к рублю');
    print('Выбери');
  }
}
//----------------------------------------------------------------------------------------------------------------------------------------------
// 5 задание
class Garage<Instrument, Predmet, Ded> {
  Instrument instrument;
  Predmet predmet;
  Ded ded;
  
  Garage(this.instrument, this.ded, this.predmet);
  
  void lies() => print("В");
}
//----------------------------------------------------------------------------------------------------------------------------------------------
// 6 задание
class Peregruz {
  final num value;
  Peregruz(this.value);
  // Перегрузка оператора +
  Peregruz operator +(Peregruz other) => Peregruz(value + other.value);
  // Перегрузка оператора -
  Peregruz operator -(Peregruz other) => Peregruz(value - other.value);
  // Перегрузка оператора *
  Peregruz operator *(Peregruz other) => Peregruz(value * other.value);
  // Перегрузка оператора / (результат - double)
  Peregruz operator /(Peregruz other) => Peregruz(value / other.value);
  
  @override
  String toString() => '$value';
}
//----------------------------------------------------------------------------------------------------------------------------------------------
// 7 задание
enum sostoiania {
  stop,
  drive,
  turn;  

  @override
  String toString() {
    switch (this) {
      case sostoiania.stop:
        return 'стоп';
      case sostoiania.drive:
        return 'едь';
      case sostoiania.turn:
        return 'поворот';
    }
  }
}

class Car {
  sostoiania state = sostoiania.stop;

  void stop() {
    if (state == sostoiania.stop) {
      print('Машина уже стоит');
    } else {
      state = sostoiania.stop;
      print('Машина остановилась');
    }
  }

  void drive() {
    if (state == sostoiania.drive) {
      print('Машина уже едет');
    } else if (state == sostoiania.turn) {
      state = sostoiania.drive;
      print('Машина продолжает движение');
    } else {
      state = sostoiania.drive;
      print('Машина поехала');
    }
  }

  void turn() {
    if (state == sostoiania.stop) {
      print('Машина стоит, сначала нужно поехать');
    } else if (state == sostoiania.turn) {
      print('Машина уже поворачивает');
    } else {
      state = sostoiania.turn;
      print('Машина поворачивает');
    }
  }

  void showStatus() {
    print('Состояние машины: ${state.toString()}');
  }
}
//----------------------------------------------------------------------------------------------------------------------------------------------
// 8 задание
class GeoFig{
  int ploshad;
  int perimtr;
  GeoFig(this.ploshad, this.perimtr);
}
class Treugolnik extends GeoFig{
  int bissectrisa;
  int visota;
  int mediana;
  Treugolnik(super.ploshad, super.perimtr, this.bissectrisa, this.mediana, this.visota);
}
class Okrushnozt extends GeoFig{
  int radius;
  int deamtr;
  Okrushnozt(super.ploshad, super.perimtr, this.radius, this.deamtr);
}
class Priamougolnik extends GeoFig{
  int diagonal;
  Priamougolnik(super.ploshad, super.perimtr, this.diagonal);
}
//----------------------------------------------------------------------------------------------------------------------------------------------
//9

class NumberConverter {
  void start() {
    print("Введите число, которое будет конвертироваться: ");
    int number = int.parse(stdin.readLineSync()!);
    print("Выберите в какую систему счисления конверитровать: ");
    int choice = int.parse(stdin.readLineSync()!);
    String result=convert(number, choice);
    print(result);
  }

  String convert(int number, int choice) {
    if (choice == 10) return number.toRadixString(10);
    if (choice == 16) return number.toRadixString(16);
    if (choice == 8) return number.toRadixString(8);
    return "Надо 10 или 16 или 8";
  }
}

//----------------------------------------------------------------------------------------------------------------------------------------------
//10
abstract class GeoShape {
  double area();
}

class Shapes {
  List<GeoShape> shapes = [];

  void add(GeoShape shape) {
    shapes.add(shape);
  }

  GeoShape? maxArea() {
    if (shapes.isEmpty) {
      return null;
    }

    GeoShape max = shapes[0];
    double maxArea = max.area();

    for (int i = 1; i < shapes.length; i++) {
      double currentArea = shapes[i].area();
      if (currentArea > maxArea) {
        maxArea = currentArea;
        max = shapes[i];
      }
    }
    return max;
  }
}

class triugl extends GeoShape {
  double base;
  double visota;

  triugl(this.base, this.visota);

  @override
  double area() {
    return 1/2 * base * visota;
  }
  @override
  String toString() => 'Треугольник ($base, $visota)';
}

class crug extends GeoShape {
  double radius;

  crug(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
  @override
  String toString() => 'Круг ($radius)';
}

class chetiugl extends GeoShape {
  double shir;
  double dlin;

  chetiugl(this.shir, this.dlin);

  @override
  double area() {
    return shir * dlin;
  }
  @override
  String toString() => 'Прямоугольник ($shir × $dlin)';
}

//----------------------------------------------------------------------------------------------------------------------------------------------
//11

// Класс для столовых приборов
abstract class StolovyPribor {
  void polozhitNaStol(Stol stol, int kolvo);
  void vziatSoStola(Stol stol, int kolvo);
}

class Stol {
  int lozhki = 0;
  int vilki = 0;
  int nozhi = 0;

  void pokazatSchetchiki() {
    print('Ложек на столе: $lozhki');
    print('Вилок на столе: $vilki');
    print('Ножей на столе: $nozhi');
  }

  // Методы для изменения количества
  void dobavitLozhki(int kolvo) => lozhki += kolvo;
  void dobavitVilki(int kolvo) => vilki += kolvo;
  void dobavitNozhi(int kolvo) => nozhi += kolvo;

  void ubratLozhki(int kolvo) {
    if (kolvo > lozhki) {
      print('Недостаточно ложек на столе!');
    } else {
      lozhki -= kolvo;
      print('Со стола взяли $kolvo ложек.');
    }
  }

  void ubratVilki(int kolvo) {
    if (kolvo > vilki) {
      print('Недостаточно вилок на столе!');
    } else {
      vilki -= kolvo;
      print('Со стола взяли $kolvo вилок.');
    }
  }

  void ubratNozhi(int kolvo) {
    if (kolvo > nozhi) {
      print('Недостаточно ножей на столе!');
    } else {
      nozhi -= kolvo;
      print('Со стола взяли $kolvo ножей.');
    }
  }

  // Методы для приборов
  void polozhitLozhki(int kolvo) => dobavitLozhki(kolvo);
  void polozhitVilki(int kolvo) => dobavitVilki(kolvo);
  void polozhitNozhi(int kolvo) => dobavitNozhi(kolvo);

  void vziatLozhki(int kolvo) => ubratLozhki(kolvo);
  void vziatVilki(int kolvo) => ubratVilki(kolvo);
  void vziatNozhi(int kolvo) => ubratNozhi(kolvo);

  // Основное меню 
  void zapusk() {
    while (true) {
      print('Что вы хотите сделать?');
      print('1 — Положить прибор на стол');
      print('2 — Взять прибор со стола');
      print('3 — Показать количество приборов на столе');
      print('0 — Выйти');
      stdout.write('Ваш выбор: ');
      String? input = stdin.readLineSync();
      if (input == null) continue;
      int? vibor = int.tryParse(input);
      if (vibor == null) {
        print('Ошибка: введите число!');
        continue;
      }

      if (vibor == 0) {
        print('До свидания!');
        break;
      }

      switch (vibor) {
        case 1:
          obrabotatPolozhit();
          break;
        case 2:
          obrabotatVziat();
          break;
        case 3:
          pokazatSchetchiki();
          break;
        default:
          print('Неверный выбор. Попробуйте снова.');
      }
    }
  }

  void obrabotatPolozhit() {
    print('Выберите прибор: 1 — Ложка, 2 — Вилка, 3 — Нож');
    stdout.write('Ваш выбор: ');
    String? viborPrib = stdin.readLineSync();
    int? tip = int.tryParse(viborPrib ?? '');
    if (tip == null || tip < 1 || tip > 3) {
      print('Неверный тип прибора.');
      return;
    }

    stdout.write('Сколько приборов положить? ');
    String? kolStr = stdin.readLineSync();
    int? kolvo = int.tryParse(kolStr ?? '');
    if (kolvo == null || kolvo <= 0) {
      print('Некорректное количество.');
      return;
    }

    switch (tip) {
      case 1:
        polozhitLozhki(kolvo);
        print('На стол положили $kolvo ложек.');
        break;
      case 2:
        polozhitVilki(kolvo);
        print('На стол положили $kolvo вилок.');
        break;
      case 3:
        polozhitNozhi(kolvo);
        print('На стол положили $kolvo ножей.');
        break;
    }
  }

  void obrabotatVziat() {
    print('Выберите прибор: 1 — Ложка, 2 — Вилка, 3 — Нож');
    stdout.write('Ваш выбор: ');
    String? viborPrib = stdin.readLineSync();
    int? tip = int.tryParse(viborPrib ?? '');
    if (tip == null || tip < 1 || tip > 3) {
      print('Неверный тип прибора.');
      return;
    }

    stdout.write('Сколько приборов взять? ');
    String? kolStr = stdin.readLineSync();
    int? kolvo = int.tryParse(kolStr ?? '');
    if (kolvo == null || kolvo <= 0) {
      print('Некорректное количество.');
      return;
    }

    switch (tip) {
      case 1:
        vziatLozhki(kolvo);
        break;
      case 2:
        vziatVilki(kolvo);
        break;
      case 3:
        vziatNozhi(kolvo);
        break;
    }
  }
}

// Реализация конкретных приборов для наследования
class Lozhka implements StolovyPribor {
  @override
  void polozhitNaStol(Stol stol, int kolvo) {
    stol.polozhitLozhki(kolvo);
  }

  @override
  void vziatSoStola(Stol stol, int kolvo) {
    stol.vziatLozhki(kolvo);
  }
}

class Vilka implements StolovyPribor {
  @override
  void polozhitNaStol(Stol stol, int kolvo) {
    stol.polozhitVilki(kolvo);
  }

  @override
  void vziatSoStola(Stol stol, int kolvo) {
    stol.vziatVilki(kolvo);
  }
}

class Nozh implements StolovyPribor {
  @override
  void polozhitNaStol(Stol stol, int kolvo) {
    stol.polozhitNozhi(kolvo);
  }

  @override
  void vziatSoStola(Stol stol, int kolvo) {
    stol.vziatNozhi(kolvo);
  }
}

//----------------------------------------------------------------------------------------------------------------------------------------------
void main(){
  print("--------------------1 задание-------------------");
  Chelovek chel = Chelovek ("Антон");
  chel.pit();
  
  print("--------------------3 задание-------------------");
  print('Введите максимальный вес грифа (в кг):');
  double? maxW = double.tryParse(stdin.readLineSync()!);
  if (maxW == null || maxW <= 0) {
    print('Некорректный ввод 20 кг автоматом');
    maxW = 20;
  }
  Grif grif = Grif(maxW);

  while (true) {
    grif.showStatus();
    print('Что сделать?');
    print('1. Надеть блин слева');
    print('2. Надеть блин справа');
    print('0. Выйти');
    stdout.write('Ваш выбор: ');
    String? input = stdin.readLineSync();
    if (input == null) continue;
    int choice = int.tryParse(input) ?? -1;

    if (choice == 0) {
      print('Программа завершена.');
      break;
    }

    if (choice != 1 && choice != 2) {
      print('Неверный выбор.');
      continue;
    }

    // Ввод веса блина
    stdout.write('Введите вес блина (в кг): ');
    String? weightStr = stdin.readLineSync();
    double? weight = double.tryParse(weightStr ?? '');
    if (weight == null || weight <= 0) {
      print('Некорректный вес. Попробуйте снова.');
      continue;
    }

    Blin newBlin = Blin(weight);

    if (choice == 1) {
      grif.addLeft(newBlin);
    } else {
      grif.addRight(newBlin);
    }
  }

  print('Итоговое состояние грифа:');
  grif.showStatus();

  print("--------------------4 задание-------------------");
  Converter c = new Converter();
  c.inputt();
  print("--------------------5 задание-------------------");
  var g = Garage("Лопата", "Дед-Максим", "предмет");
  print("--------------------6 задание-------------------");
  Peregruz a = Peregruz(10);
  Peregruz b = Peregruz(3);
  print('$a + $b = ${a + b}');
  print('$a - $b = ${a - b}');
  print('$a * $b = ${a * b}');
  print('$a / $b = ${a / b}');
  print("--------------------7 задание-------------------");
  Car car = Car();

  while (true) {
    car.showStatus();
    print('Выберите действие:');
    print('1. Стоп');
    print('2. Ехать');
    print('3. Повернуть');
    print('0. Выход');
    stdout.write('Ваш выбор: ');

    String? input = stdin.readLineSync();
    if (input == null) continue;

    int? choice = int.tryParse(input);
    if (choice == null) {
      print('Ошибка: введите число!');
      continue;
    }
    if (choice == 0) {
      print('Программа завершена.');
      break;
    }
    switch (choice) {
      case 1:
        car.stop();
        break;
      case 2:
        car.drive();
        break;
      case 3:
        car.turn();
        break;
      default:
        print('Неверный выбор. Попробуйте снова.');
    }
  }
  print("--------------------9 задание-------------------");
  NumberConverter numconv = NumberConverter();
  numconv.start();
  print("--------------------10 задание-------------------");
  Shapes shapeCollection = Shapes();

  crug cr = crug(3);
  chetiugl che = chetiugl(2, 3);
  triugl tri = triugl(2, 4);

  shapeCollection.add(cr);
  shapeCollection.add(che);
  shapeCollection.add(tri);

  GeoShape? maxShape = shapeCollection.maxArea();

  if (maxShape != null) {
    print('Фигура с максимальной площадью: $maxShape');
    print('Её площадь: ${maxShape.area()}');
  } else {
    print('Нет фигур в списке');
  }

  print('Все фигуры:');
  for (var shape in shapeCollection.shapes) {
    print('$shape : ${shape.area()}');
  }
  print("--------------------11 задание-------------------");
  Stol stol = Stol();
  // я сделал все в классе приборов это для показа что можно и через приборы по иерархии
  Lozhka lozhka = Lozhka();
  lozhka.polozhitNaStol(stol, 5);
  stol.pokazatSchetchiki();
  lozhka.vziatSoStola(stol, 2);
  stol.pokazatSchetchiki();
  // Запуск меню
  stol.zapusk();

}