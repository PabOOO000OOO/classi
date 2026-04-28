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

void main(){
  Chelovek chel = Chelovek ("Антон");
  chel.pit();
}
