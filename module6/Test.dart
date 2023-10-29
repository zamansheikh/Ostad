import 'dart:io';

void main() {
  List<int> imageWidths = [];
  //take 4 int inputs from oneline
  imageWidths =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  for (int i = imageWidths[0]; i <= imageWidths[1]; i++) {
    if (i >= imageWidths[2] && i <= imageWidths[3]) {
      continue;
    } else {
      stdout.write('$i ');
    }
  }
}
