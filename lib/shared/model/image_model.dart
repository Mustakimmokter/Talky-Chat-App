import 'package:takky/shared/model/inedx.dart';

class ImageModel {
  //File images
  static List<String> getFileImages() {
    final _fileImages = [
      'assets/images/sudipto.jpg',
      'assets/images/nayeem_bhai.jpg',
      'assets/images/2.png',
      'assets/images/nayeem_bhai.jpg',
      'assets/images/sudipto.jpg',
      'assets/images/2.png',
      'assets/images/sudipto.jpg',
      'assets/images/2.png'
    ];

    return _fileImages;
  }

  // Group Call
  static List<GroupCallModel> getGroupCallList() {
    final _groupCallList = [
      GroupCallModel(name: 'Sudipto Saha', image: 'assets/images/sudipto.jpg'),
      GroupCallModel(name: 'Sudipto Saha', image: 'assets/images/sudipto.jpg'),
      GroupCallModel(name: 'Sudipto Saha', image: 'assets/images/sudipto.jpg'),
      GroupCallModel(name: 'Sudipto Saha', image: 'assets/images/sudipto.jpg'),
      GroupCallModel(name: 'Sudipto Saha', image: 'assets/images/sudipto.jpg'),
      GroupCallModel(name: 'Sudipto Saha', image: 'assets/images/sudipto.jpg'),
      GroupCallModel(name: 'Sudipto Saha', image: 'assets/images/sudipto.jpg'),
    ];

    return _groupCallList;
  }
}
