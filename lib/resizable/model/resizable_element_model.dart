import 'list_field_type.dart';

class ResizableElementModel {
  final ListFieldType type;
  final void Function(Map<String, dynamic> data) onSave;
  final void Function() onChanged;

  void save() {
    onSave({
      'width': _width,
      'isShow': _isShow,
    });
  }

  late double _width;
  double get width => _width;
  set width(double width) {
    _width = width;
    onChanged();
  }

  late bool _isShow;
  bool get isShow => _isShow;
  set isShow(bool isShow) {
    _isShow = isShow;
    onChanged();
  }

  ResizableElementModel({
    required Map<String, dynamic> initData,
    required this.type,
    required this.onChanged,
    required this.onSave,
  }) {
    const double initWidth = 100;
    _width = initData['width'] ?? initWidth;
    _isShow = initData['isShow'] ?? true;
  }
}
