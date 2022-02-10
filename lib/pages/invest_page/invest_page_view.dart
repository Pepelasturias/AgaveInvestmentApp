import 'package:curiosity/pages/invest_page/invest_container.dart';
import 'package:curiosity/pages/invest_page/invest_user_information.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class InvestPageView extends StatefulWidget {
  InvestPageView({Key key}) : super(key: key);

  static const appName = "Agave Investment";
  static const primaryColor = Color(0xFF2E5037);
  static const backgroundScaffoldColor = Color(0xFF212121);
  static const agaveCost = 27.00;
  static const initialCameraPosition = LatLng(23.6260333, -102.5375005);

  @override
  State<InvestPageView> createState() => _InvestPageViewState();
}

class _InvestPageViewState extends State<InvestPageView> {
  final ubicationOptions = <String>[
    'Seleccionar Ubicación',
  ];
  int quantityCounter = 0;

  void addQuantity() {
    setState(() {
      quantityCounter++;
    });
  }

  void decreaseQuantity() {
    if (quantityCounter - 1 < 0) return;

    setState(() {
      quantityCounter--;
    });
  }

  Widget renderCounterSelection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InvestContainer(
          child: IconButton(
            onPressed: decreaseQuantity,
            icon: Icon(Icons.remove),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: MediaQuery.of(context).size.width * .25,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          alignment: Alignment.center,
          child: Text(quantityCounter.toString()),
        ),
        const SizedBox(width: 10),
        InvestContainer(
          child: IconButton(
            onPressed: addQuantity,
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }

  final pageController = PageController();

  void animateToPage(int pageNumber) {
    pageController.animateToPage(
      pageNumber,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: InvestPageView.primaryColor,
        title: Text(
          InvestPageView.appName.toUpperCase(),
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InvestContainer(
                  child: Text(
                    'Precio del Agave: \$ ${InvestPageView.agaveCost} MXN',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: SizedBox(
                    // width: size.width * .9,
                    height: size.height * .3,
                    child: GoogleMap(
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: false,
                      initialCameraPosition: CameraPosition(
                        target: InvestPageView.initialCameraPosition,
                        zoom: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InvestContainer(
                  child: Text(
                    'Hectareas Disponibles (18)',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.only(
                    right: 15,
                    left: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    isDense: true,
                    items: ubicationOptions.map((ubication) {
                      return DropdownMenuItem<String>(
                        value: ubication,
                        child: Text(
                          ubication,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                    value: ubicationOptions.first,
                    onChanged: (_) => true,
                  ),
                ),
                const SizedBox(height: 15),
                renderCounterSelection(),
                const Spacer(),
                Center(
                  child: SizedBox(
                    width: size.width * .6,
                    child: TextButton(
                      onPressed: () => animateToPage(2),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF1CD64C),
                      ),
                      child: Text(
                        'INVERTIR',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InvestUserInformation(
            quantitySelected: quantityCounter,
          ),
        ],
      ),
      backgroundColor: InvestPageView.backgroundScaffoldColor,
    );
  }
}
