

void main() {
  var myPhone = Phone(16, 'OnePlus', 256);
  myPhone();

}

class Phone {
  final int ram;
  final String manufacturer;
  final int memory;

  Phone(this.ram, this.manufacturer, this.memory);

  void call(){
    print('Ram -> $ram manufacturer -> $manufacturer memory -> $memory');
  }
}