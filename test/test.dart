import 'package:material_x/MxServices.dart';

List widgetname = [
  'youtubeexplore',
  'youtubesubscriptions',
  'youtubeinbox',
  'youtubelibrary'
];

void main() {
  widgetname.forEach((element) {
    mxStless(element, 'lib/page');
  });
}
