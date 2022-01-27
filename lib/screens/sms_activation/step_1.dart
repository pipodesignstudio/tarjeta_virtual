import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tarjeta_sanitaria/services/navigator_service.dart';
import 'package:tarjeta_sanitaria/style/custom_colors.dart';
import 'package:tarjeta_sanitaria/style/custom_text_style.dart';

class SmsActivation1 extends StatelessWidget {
  const SmsActivation1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            NavigatorService.closePage();
          },
          icon: Icon(
            Iconsax.arrow_left,
            color: CustomColors.headingColor,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Paso 1: Introduce tu CIPA',
              style: CustomTextStyle.h1,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
