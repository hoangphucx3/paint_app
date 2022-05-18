
class PaintDetails {
  final String name;
  final String type;
  final String iconPath;
  final String imgPath;
  final String description;
  final List<int> size;
  final List<int> price;

  PaintDetails({required this.size, required this.type, required this.iconPath, required this.name, required this.imgPath, required this.description, required this.price});
}

class PaintDetailIndex {
  final int typeIndex;
  final int detailIndex;

  PaintDetailIndex({required this.typeIndex, required this.detailIndex});
}

class PaintDetailsData {
  final PaintDetails details;

  PaintDetailsData({required this.details});
}

//demo
final List<PaintDetails> botTret = [
  PaintDetails(name: 'Skimcoat weathergard',type: 'Bột trét/Sơn ngoại thất',iconPath: 'assets/images/ic_paint.png' ,imgPath: 'assets/images/img_paint.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', size: [40, 20, 5, 1], price: [364000, 190000, 50000, 10000]),
  PaintDetails(name: 'Skimcoat weathergard',type: 'Bột trét/Sơn ngoại thất',iconPath: 'assets/images/ic_paint.png' ,imgPath: 'assets/images/img_paint.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', size: [40, 20, 5, 1], price: [364000, 190000, 50000, 10000]),
  PaintDetails(name: 'Skimcoat weathergard',type: 'Bột trét/Sơn ngoại thất',iconPath: 'assets/images/ic_paint.png' ,imgPath: 'assets/images/img_paint.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', size: [40, 20, 5, 1], price: [364000, 190000, 50000, 10000]),
  PaintDetails(name: 'Skimcoat weathergard',type: 'Bột trét/Sơn ngoại thất',iconPath: 'assets/images/ic_paint.png' ,imgPath: 'assets/images/img_paint.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', size: [40, 20, 5, 1], price: [364000, 190000, 50000, 10000]),
  PaintDetails(name: 'Skimcoat weathergard',type: 'Bột trét/Sơn ngoại thất',iconPath: 'assets/images/ic_paint.png' ,imgPath: 'assets/images/img_paint.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', size: [40, 20, 5, 1], price: [364000, 190000, 50000, 10000]),
];