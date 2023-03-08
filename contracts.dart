void main(){
    PersonDev dev = new PersonDev();
    PersonNotDev notDev = new PersonNotDev();

    Son son = new Son();

    PaywithTransaction pay1 = new PaywithTransaction();
    PaywithPix pay2 = new PaywithPix();

    print(dev.communicating());
    print(notDev.communicating());
    print(son.talk());
    pay1.pay();
    pay2.pay();
}

// A linguagem não possui interfaces, para isto existe o contrato, uma classe que quem criar deve seguir o que foi definido nele
abstract class Person{
    String communicating();
    // Não é implementado, apenas declarado
}

// Aplicando o contrato definido na classe abstrata
class PersonDev implements  Person{
    String communicating() {
        return "Hello World";
    }
}

class PersonNotDev implements  Person{
    String communicating() {
        return "Good morning";
    }
}

// Herança de classes
class Dad {
    String talk(){
        return "Slangs";
    }
}

class Son extends Dad{
}

abstract class Paiment{
    void pay();
}

// Exemplo básico de polimorfismo
class PaywithTransaction implements Paiment{
    void pay(){
        print("Pay with transaction");
    }
}

class PaywithPix implements Paiment{
    void pay(){
        print("Pay with pix");
    }
}
