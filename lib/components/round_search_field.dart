import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundSearchField extends StatelessWidget {
  const RoundSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(33),
      width: getProportionateScreenWidth(170),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 40,
            ),
            fillColor: Colors.white24,
            filled: true,
            hintText: 'Tìm kiếm sản phẩm, thương hiệu...',
            hintStyle: const TextStyle(
              fontSize: 8,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}