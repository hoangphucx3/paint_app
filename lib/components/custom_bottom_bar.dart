import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 20,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
      ),
      selectedLabelStyle: const TextStyle(
        fontSize: 15,
      ),
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/ic_trang_chu.png'),
            color: Colors.red,
          ),
          label: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/ic_mau_son.png'),
            color: Colors.black54,
          ),
          label: 'Màu sơn',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/ic_san_pham.png'),
            color: Colors.black54,
          ),
          label: 'Sản phẩm',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/ic_bao_hanh.png'),
            color: Colors.black54,
          ),
          label: 'Bảo hành',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/ic_lien_he.png'),
            color: Colors.black54,
          ),
          label: 'Liên hệ',
        ),
      ],
    );
  }
}