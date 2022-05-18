

import '../screens/detail_screens/giai_phap_son_screen.dart';
import '../screens/detail_screens/nha_dep_screen.dart';

class Product {
  final String image;
  final String name;
  final double height;
  final String routeName;

  Product({this.routeName = '/nha_dep_screen', required this.height, required this.image, required this.name});
}


class ProductIndex {
  final int index;

  ProductIndex({required this.index});
}


//demo

List<Product> demoProductList = [
  Product(image: 'assets/images/nha_dep_video.png', name: 'Nhà đẹp - Video', height: 236, routeName: NhaDepScreen.routeName),
  Product(image: 'assets/images/xu_huong_mau_sac.png', name: 'Xu hướng màu sắc', height: 236),
  Product(image: 'assets/images/giai_phap_son_nha.png', name: 'Giải pháp sơn nhà', height: 236, routeName: GiaiPhapScreen.routeName),
  Product(image: 'assets/images/he_thong_dai_ly.png', name: 'Hệ thống đại lý', height: 126),
  Product(image: 'assets/images/bao_hanh_chinh_hang.png', name: 'Bảo hành chính hãng', height: 126),
  Product(image: 'assets/images/phoi_mau_mien_phi.png', name: 'Phối màu miễn phí', height: 126),
  Product(image: 'assets/images/dich_vu_thi_cong.png', name: 'Dịch vụ thi công', height: 126),
  Product(image: 'assets/images/son_tuong_nghe_thuat.png', name: 'Sơn tường nghệ thuật', height: 126),

];