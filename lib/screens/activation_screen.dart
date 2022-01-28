import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:tarjeta_sanitaria/routes/routes.dart';
import 'package:tarjeta_sanitaria/style/custom_colors.dart';
import 'package:tarjeta_sanitaria/style/custom_text_style.dart';
import 'package:iconsax/iconsax.dart';

class ActivationScreen extends StatelessWidget {
  const ActivationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: const ChooseActivation(),
      ),
    );
  }
}

class ChooseActivation extends StatefulWidget {
  const ChooseActivation({Key? key}) : super(key: key);

  @override
  _ChooseActivationState createState() => _ChooseActivationState();
}

class _ChooseActivationState extends State<ChooseActivation> {
  int selectedMethod = 0;

  List<dynamic> activations = [
    {
      'image': 'assets/img/qr-method.png',
      'selected_image': 'assets/img/qr-method-animated.gif',
      'name': 'Activar con código QR',
      'desc': 'Solicita tu código en el ambulatorio'
    },
    {
      'image': 'assets/img/sms-method.png',
      'selected_image': 'assets/img/sms-method-animated.gif',
      'name': 'Activar con SMS',
      'desc': 'Ten tu CIPA a mano y llama al 900 102 112'
    }
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          'Activa tu tarjeta',
          style: CustomTextStyle.h1,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Elige el método que desees para activar tu tarjeta sanitaria virtual',
          style: CustomTextStyle.p,
        ),
        SizedBox(
          height: size.height * 0.4,
          child: ListView.builder(
              itemCount: activations.length,
              itemBuilder: (BuildContext context, int index) {
                return Bounce(
                  duration: const Duration(milliseconds: 150),
                  onPressed: () {
                    setState(() {
                      selectedMethod = index;
                    });
                  },
                  child: AnimatedContainer(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.only(bottom: 20),
                    duration: const Duration(milliseconds: 250),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: selectedMethod == index
                                ? CustomColors.accent
                                : Colors.white.withOpacity(0),
                            width: 2),
                        boxShadow: [
                          selectedMethod == index
                              ? BoxShadow(
                                  color: Colors.indigoAccent.withOpacity(0.2),
                                  offset: const Offset(0, 3),
                                  blurRadius: 10)
                              : BoxShadow(
                                  color: Colors.grey.shade200,
                                  offset: const Offset(0, 3),
                                  blurRadius: 10)
                        ]),
                    child: Row(
                      children: [
                        selectedMethod == index
                            ? Image.asset(
                                activations[index]['selected_image'],
                                width: 50,
                              )
                            : Image.asset(
                                activations[index]['image'],
                                width: 50,
                              ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(activations[index]['name'],
                                  style: CustomTextStyle.h5),
                              Text(activations[index]['desc'],
                                  style: CustomTextStyle.caption)
                            ],
                          ),
                        ),
                        Icon(
                          Icons.check_circle,
                          color: selectedMethod == index
                              ? const Color(0xFF6CFBCE)
                              : Colors.white,
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
        Expanded(child: Container()),
        MaterialButton(
          onPressed: () {
            if (selectedMethod == 1) {
              Navigator.pushNamed(context, Flurorouter.smsActivation1);
            }
          },
          height: 50,
          color: CustomColors.accent,
          child: Text(
                selectedMethod == 0 ? 'Abrir escáner QR' : 'Siguiente',
                style: const TextStyle(color: Colors.white, fontSize: 16.0),
              ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
