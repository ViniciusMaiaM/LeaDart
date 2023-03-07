void main(){
    Cellphone newCellphone = new Cellphone("Vermelho", 20, 0.500, 5.7);
    
    print(newCellphone.details());
    print(newCellphone.cellphoneValue(200.4));
}

class Cellphone{
    final String color;
    final int quantity;
    final double size;
    final double height;
    // Com o final o objeto recebe o valor no construtor

    Cellphone(this.color, this.quantity, this.size, this.height);

    String details() {
        return "Color: ${this.color} Quantity: ${this.quantity} Size: ${this.size} Height: ${this.height}";
    }

    double cellphoneValue(double value){
        return value * this.quantity;
    }
}
