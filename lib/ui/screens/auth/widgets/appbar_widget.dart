import 'package:airbnb_clone/utils/extensions/context_extension.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
    required this.title,
    this.showBackButton = false,
  });
  final String title;
  final bool showBackButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 5),
          Row(
            children: [
              6.hSpace,
              if (showBackButton)
                GestureDetector(
                  onTap: () {
                    debugPrint("backk");
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              const Spacer(),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          5.vSpace,
          const Divider(),
        ],
      ),
    );
  }
}
