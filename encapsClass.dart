void main(){
    Car newCar = new Car('Test');

    newCar.setValue(10);

    print(newCar.value);
}

class Car{
    final String model;
    // Classes privadas são declaradas com o _
    String _secrete = "secrete";

    int _value = 1000;

    // Dessa maneira se cria uma variável que retorna o valor do atributo privado
    int get value => _value;

    void setValue(int value) => this._value = value;

    Car(this.model);
}
