/// Point of concern
/// 1. Unnamed required param
/// 2. Named optional param
/// 3. Named required param
/// 4. Named default value param
/// 5. Positional Optional param
/// 6. Positional default value param
import 'package:meta/meta.dart';

void main() {
  volumeOne(3, 4, 5);
  volumeTwo(3, 4);
  volumeThree(3, 4, length: 5);
  volumeFour(3, 4);
  volumeFour(3, 4);
  volumeSix(3, 4);
}

/// 1. Unnamed required param
int volumeOne(int width, int height, int length) {
  return width * height * length;
}

/// 2. Named optional param
int volumeTwo(int width, int height, {int length}) {
  length = 5; // as length will be null if not passed while calling the function
  return width * height * length;
}

/// 3. Named required param
int volumeThree(int width, int height, {@required int length}) {
  return width * height * length;
}

/// 4. Named default value param
int volumeFour(int width, int height, {int length = 5}) {
  return width * height * length;
}

/// 5. Positional Optional param
int volumeFive(int width, int height, [int length]) {
  length = 5; // as length will be null if not passed while calling the function
  return width * height * length;
}

/// 6. Positional default value param
int volumeSix(int width, int height, [int length = 5]) {
  return width * height * length;
}
