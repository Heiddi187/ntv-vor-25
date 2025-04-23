void main () {

  Rectangle(height: 15, width: 20).area();

}

class Rectangle {

  int height;
  int width;

  Rectangle({required this.height, required this.width});

  void area() {
    if (height > 0 && width > 0) {
      int sum = height * width;
      print(
          "rectangle with the height: $height \n and the width: $width\n has the area of $sum");
    } else {
      print("only positive values are allowed");
    }
  }
}
class WeatherData {
  int temperature;
  int humidity;
  int scale;

  WeatherData({required this.temperature, required this.humidity, required this.scale});
}
