import 'package:app_ban_son/models/paint_details.dart';

class PainType {
  final String paintTypeName;
  final List<String> paintTypeList;
  final Map<String, List<PaintDetails>> detailInType;

  PainType(
      {required this.paintTypeList,
      required this.paintTypeName,
      required this.detailInType});
}

class PaintTypeIndex {
  final int typeIndex;

  PaintTypeIndex({required this.typeIndex});
}

//demo

List<PainType> demoPaintList = [
  PainType(paintTypeName: 'Sơn nước nội thất', paintTypeList: [
    'Bột trét',
    'Chống thấm',
    'Sơn lót',
    'Sơn giữa',
    'Sơn phủ'
  ], detailInType: {
    'Bột trét': botTret,
    'Chống thấm': botTret,
    'Sơn lót': botTret,
    'Sơn giữa': botTret,
    'Sơn phủ': botTret,
  }),
  PainType(paintTypeName: 'Sơn nước ngoại thất', paintTypeList: [
    'Bột trét',
    'Chống thấm',
    'Sơn lót',
    'Sơn giữa',
    'Sơn phủ'
  ], detailInType: {
    'Bột trét': botTret,
    'Chống thấm': botTret,
    'Sơn lót': botTret,
    'Sơn giữa': botTret,
    'Sơn phủ': botTret,
  }),
  PainType(paintTypeName: 'Sơn dân dụng', paintTypeList: [
    'Bột trét',
    'Chống thấm',
    'Sơn lót',
    'Sơn giữa',
    'Sơn phủ'
  ], detailInType: {
    'Bột trét': botTret,
    'Chống thấm': botTret,
    'Sơn lót': botTret,
    'Sơn giữa': botTret,
    'Sơn phủ': botTret,
  }),
];
