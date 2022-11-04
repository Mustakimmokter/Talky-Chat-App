import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileUpdate extends ChangeNotifier {
  final List<String> _statusList = ['Available', 'Unavailable'];
  List<String> get statusList => _statusList;

  String _status = 'Select a status';
  String get status => _status;

  void getStatus(String statusValue) {
    _status = statusValue;
    notifyListeners();
  }

  // image pick
  final _pickImage = ImagePicker();
  String? _image;

  XFile? _img;

  String? get image => _image;

  Future<void> getImage() async {
    _img = await _pickImage.pickImage(source: ImageSource.gallery);
    _image = _img!.path;
    notifyListeners();
  }

  // Permission
  //
  // @override
  // Future<void> notifyListeners() async {
  //   super.notifyListeners();
  //   var _permissionStatus = await Permission.storage.status;
  //   if (_permissionStatus != PermissionStatus.granted) {
  //     final permissionStatus = await Permission.storage.request();
  //     _permissionStatus = permissionStatus;
  //   }
  // }

  //
}
