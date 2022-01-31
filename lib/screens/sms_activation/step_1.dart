import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tarjeta_sanitaria/services/navigator_service.dart';
import 'package:tarjeta_sanitaria/style/custom_colors.dart';
import 'package:tarjeta_sanitaria/style/custom_text_style.dart';
import 'package:tarjeta_sanitaria/style/input_style.dart';

class SmsActivation1 extends StatelessWidget {
  const SmsActivation1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
              height: 5,
            ),
            Text(
              'Paso 1: Introduce tu CIPA',
              style: CustomTextStyle.h1,
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecorations.authInputDecoration(),
            ),
            SizedBox(
              height: size.height * 0.3,
            ),
            Bounce(
              duration: const Duration(milliseconds: 150),
              onPressed: () async {
                await showDialog(
                    context: context, builder: (_) => const HelpDialog());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Iconsax.support, color: CustomColors.accent),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('¿Dónde consultar el CIPA?', style: CustomTextStyle.p)
                ],
              ),
            ),
            Expanded(child: Container()),
            Row(
              children: [
                Expanded(child: Container()),
                MaterialButton(
                  onPressed: () {},
                  height: 50,
                  color: CustomColors.accent,
                  child: const Text(
                    'Siguiente',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HelpDialog extends StatelessWidget {
  const HelpDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        width: double.infinity,
        height: 350,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Container()),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Iconsax.close_circle))
              ],
            ),
            const Text(
                'El CIPA es un código único de 10 dígitos que puedes encontrar en tu tarjeta sanitaria'),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              '/assets/img/support.png',
              fit: BoxFit.cover,
            ),
            Expanded(child: Container()),
            Row(
              children: [
                Expanded(child: Container()),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  height: 50,
                  color: CustomColors.accent,
                  child: const Text(
                    'De acuerdo',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
