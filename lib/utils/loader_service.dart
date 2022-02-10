import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoaderService {
  final BuildContext context;

  LoaderService(this.context);

  factory LoaderService.of(BuildContext context) {
    return LoaderService(context);
  }

  showLoader() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showDialog(
        context: context,
        builder: (dialogContext) {
          final size = MediaQuery.of(dialogContext).size;

          return Center(
            child: Container(
              width: size.width * .4,
              height: size.width * .4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Lottie.asset(
                'assets/json/greendata.json', //archivo a reproducir
                repeat: true, //si se repite la animacion
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      );
    });
  }

  closeLoader<T>() {
    return Navigator.of(context).pop<T>();
  }
}
