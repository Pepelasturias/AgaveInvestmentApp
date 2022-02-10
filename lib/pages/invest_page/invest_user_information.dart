import 'package:curiosity/pages/invest_page/invest_page_view.dart';
import 'package:flutter/material.dart';

class InvestUserInformation extends StatefulWidget {
  InvestUserInformation({
    Key key,
    @required this.quantitySelected,
  }) : super(key: key);

  final int quantitySelected;

  @override
  State<InvestUserInformation> createState() => _InvestUserInformationState();
}

class _InvestUserInformationState extends State<InvestUserInformation> {
  final namesController = TextEditingController();

  final lastNameController = TextEditingController();

  final addressController = TextEditingController();

  final stateController = TextEditingController();

  final countryController = TextEditingController();

  final postalCodeController = TextEditingController();

  final intNumberController = TextEditingController();

  final extensionController = TextEditingController();

  Widget renderInput({
    @required String label,
    @required TextEditingController controller,
  }) {
    return renderLocalContainer(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .03,
        child: Center(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: label,
              isDense: true,
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget renderLocalContainer({
    @required Widget child,
  }) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: child,
    );
  }

  Widget renderInfoContainer(String text) {
    return renderLocalContainer(child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            renderInfoContainer(
              'Cantidad Adquirida: ${widget.quantitySelected}',
            ),
            renderInfoContainer('Ubicacion: No desarrollado'),
            renderInfoContainer(
              'Costo de Inversion: \$ ${widget.quantitySelected * InvestPageView.agaveCost} MXN',
            ),
            const Divider(color: Colors.white),
            Text(
              'Ingrese la Información',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Divider(color: Colors.white),
            renderInput(
              label: 'Nombres',
              controller: namesController,
            ),
            renderInput(
              label: 'Apellidos',
              controller: lastNameController,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * .6,
                  child: renderInput(
                    label: 'Direccion',
                    controller: addressController,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: renderInput(
                    label: 'Num. Ext',
                    controller: extensionController,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * .6,
                  child: renderInput(
                    label: 'Estado',
                    controller: stateController,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: renderInput(
                    label: 'Num. Int',
                    controller: intNumberController,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * .6,
                  child: renderInput(
                    label: 'Pais',
                    controller: countryController,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: renderInput(
                    label: 'Cod. Postal',
                    controller: postalCodeController,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            renderInput(
              label: 'Numero de Cliente',
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
