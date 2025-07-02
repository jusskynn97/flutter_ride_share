import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/uitls/colors.dart';

class RegisterLayout extends StatelessWidget {
  final String title;
  final String subTitle;
  final List<Widget> fields;
  final VoidCallback? onNext;
  final VoidCallback? onBack;
  final VoidCallback? onSubmit;
  final String label;
  const RegisterLayout({
    super.key,
    required this.title,
    required this.subTitle,
    required this.fields,
    this.onNext,
    this.onBack,
    this.onSubmit,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // surfaceTintColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: GestureDetector(
          onTap: () {
            if (onBack != null) {
              onBack!();
            }
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/images/left.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(subTitle, style: TextStyle(fontSize: 18)),
              ),
              Column(children: fields),
            ],
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: TextButton(
                    onPressed: () => {
                      if (onNext != null) {
                        onNext!()
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
                      foregroundColor: WidgetStateProperty.all<Color>(black),
                      minimumSize: WidgetStateProperty.all<Size>(Size(355, 50)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          label,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
