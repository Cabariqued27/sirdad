

// import '/flutter_flow/flutter_flow_checkbox_group.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sirdad/models/miembro_model.dart';

MiembroModel miembroModel = MiembroModel();

class Miembro_Widget extends StatefulWidget {
  //final SharedData sharedData;

  const Miembro_Widget({
    Key? key,
    /*required this.sharedData*/
  }) : super(key: key);

  @override
  _Miembro_Widget createState() => _Miembro_Widget();
}

class _Miembro_Widget extends State<Miembro_Widget> {
  

  // TextEditingController textController1 = TextEditingController();
  // TextEditingController textController2 = TextEditingController();
  // TextEditingController textController3 = TextEditingController();
  // TextEditingController textController4 = TextEditingController();

  // List<String> checkboxGroupValues1 = [];
  // List<String> checkboxGroupValues2 = [];
  // List<String> checkboxGroupValues3 = [];
  // List<String> checkboxGroupValues4 = [];
  // List<String> checkboxGroupValues5 = [];
  // List<String> checkboxGroupValues6 = [];
  // List<String> checkboxGroupValues7 = [];
  // List<String> checkboxGroupValues8 = [];
  // List<String> checkboxGroupValues9 = [];
  // List<String> checkboxGroupValues10 = [];
  // List<String> checkboxGroupValues11 = [];
  // List<String> checkboxGroupValues12 = [];
  // List<String> checkboxGroupValues13 = [];

  //var _value = -1;

  @override
  void dispose() {
    // textController1.dispose();
    // textController2.dispose();
    // textController3.dispose();
    // textController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final miembroModel = context.watch<MiembroModel>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white, // Cambiar al color deseado
        appBar: AppBar(
          backgroundColor: Colors.blue, // Cambiar al color deseado
          title: Text(
            'Familiar',
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                  controller: miembroModel.textController1,
                  decoration: InputDecoration(
                    labelText: 'Nombre...',
                  ),
                  onChanged: (value) {
                    miembroModel.textController1 =
                        TextEditingController(text: value);
                  },
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: TextFormField(
                        controller: miembroModel
                            .textController2, // Cambiar a tu controller adecuado
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                            labelText: 'Apellido...',
                            // Aquí puedes personalizar los estilos de acuerdo a tus preferencias
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black, // Cambiar al color deseado
                            ),
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black, // Cambiar al color deseado
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey, // Cambiar al color deseado
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue, // Cambiar al color deseado
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Cambiar al color deseado
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red, // Cambiar al color deseado
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            )),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black, // Cambiar al color deseado
                        ),
                        onChanged: (value) {
                          miembroModel.textController2 =
                              TextEditingController(text: value);
                        }
                        // Agregar validadores según tus necesidades
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: DropdownButtonFormField(
                            //controller: GroupController(),
                            value: miembroModel
                                .DropDownValue1, // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                            items: [
                              DropdownMenuItem(
                                child: Text("Documento de identidad..."),
                                value: -1,
                              ),
                              DropdownMenuItem(
                                child: Text("Registro civil"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Tarjeta de Identidad"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("Cedula ciudadana"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("Cedula extranjera"),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("Indocumentado"),
                                value: 5,
                              ),
                              DropdownMenuItem(
                                child: Text("No sabe/No  responde"),
                                value: 6,
                              ),
                            ],
                            onChanged: (value) {
                              miembroModel.DropDownValue1 = value as int;
                              int save = miembroModel.DropDownValue1 as int;
                              print("Tipo de documento: $save");
                              // sharedData.selectedDropdownDocument = value!;
                              // int shared = sharedData.selectedDropdownDocument;
                              // print("sharedData: $shared");
                            },
                            // onChange: (v) {
                            //   // Implementa tu lógica aquí
                            // },
                            //values: [1, 2, 3],
                            // groupStyle: GroupStyle(
                            //   activeColor: Colors.black,
                            //   itemTitleStyle: TextStyle(
                            //     fontSize: 13,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: TextFormField(
                  controller: miembroModel
                      .textController3, // Asegúrate de tener el controlador adecuado
                  autofocus: true,
                  obscureText: false,
                  onChanged: (value) {
                    miembroModel.textController3 =
                        //preguntar si en la BD tiene el campo de número de documentos
                        //como un String
                        TextEditingController(text: value);
                    String save;
                    save = miembroModel.textController3!.text;
                    print("Número de documento: $save");
                  },
                  decoration: InputDecoration(
                    labelText: 'Número de documento...',
                    // Personaliza los estilos según tus preferencias
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Cambia al color deseado
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Cambia al color deseado
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black, // Cambia al color deseado
                  ),
                  // Agrega validadores según tus necesidades
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter some text';
                  //   }
                  //   return null;
                  // },
                ),
              ),
              Container(
                width: 413,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Parentesco con el jefe del hogar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Cambia al color deseado
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Readex Pro',
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: DropdownButtonFormField(
                      //controller: GroupController(),
                      value: miembroModel.DropDownValue2,
                      items: [
                        // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                        DropdownMenuItem(
                          child: Text("Parentesco..."),
                          value: -1,
                        ),
                        DropdownMenuItem(
                          child: Text("Jefe del Hogar"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Esposo(a)"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("Hijo(a)"),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text("primo(a)"),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Text("Tío"),
                          value: 5,
                        ),
                        DropdownMenuItem(
                          child: Text("Nieto(a)"),
                          value: 6,
                        ),
                        DropdownMenuItem(
                          child: Text("Suegro(a)"),
                          value: 7,
                        ),
                        DropdownMenuItem(
                          child: Text("Yerno/Nuera"),
                          value: 8,
                        ),
                      ],
                      onChanged: (value) {
                        miembroModel.DropDownValue2 = value as int;
                        //sharedData.seledtedDropdownParentesco = value!;
                      },
                      // onChange: (v) {
                      //   // Implementa tu lógica aquí
                      // },
                      //values: [1, 2, 3],
                      // groupStyle: GroupStyle(
                      //   activeColor: Colors.black,
                      //   itemTitleStyle: TextStyle(
                      //     fontSize: 13,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 410,
                height: 26,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Genero\n',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFFF8F5F1),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: DropdownButtonFormField(
                      //controller: GroupController(),

                      value: miembroModel.DropDownValue3,
                      items: [
                        // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                        DropdownMenuItem(
                          child: Text("Genero..."),
                          value: " ",
                        ),
                        DropdownMenuItem(
                          child: Text("Femenino"),
                          value: "F",
                        ),
                        DropdownMenuItem(
                          child: Text("Masculino"),
                          value: "M",
                        ),
                      ],
                      onChanged: (value) {
                        miembroModel.DropDownValue3 = value;
                        //sharedData.seledtedDropdownParentesco = value!;
                      },
                      // onChange: (v) {
                      //   // Implementa tu lógica aquí
                      // },
                      //values: [1, 2, 3],
                      // groupStyle: GroupStyle(
                      //   activeColor: Colors.black,
                      //   itemTitleStyle: TextStyle(
                      //     fontSize: 13,
                      //   ),
                      // ),
                    ),
                  )

                  // Expanded(
                  //   child: SimpleGroupedCheckbox(
                  //     controller: GroupController(),
                  //     itemsTitle: ['Femenino'],
                  //     values: [1],
                  //     // onSelected: (List<String> selected) {
                  //     //   // Implementa tu lógica aquí con la lista de elementos seleccionados
                  //     // },
                  //   ),
                  // ),
                  // Expanded(
                  //   child: SimpleGroupedCheckbox(
                  //     controller: miembroModel.SimpleGroupedCheckboxValueController1 as GroupController,
                  //     itemsTitle: ['Masculino'],
                  //     values: [2],
                  //     groupStyle: GroupStyle(
                  //       activeColor: Colors.black,
                  //       itemTitleStyle: TextStyle(
                  //         fontSize: 13,
                  //       ),
                  //     ),
                  //     // onSelected: (List<String> selected) {
                  //     //   // Implementa tu lógica aquí con la lista de elementos seleccionados
                  //     // },
                  //   ),
                  // ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: TextFormField(
                  controller: miembroModel
                      .textController4, // Asegúrate de tener el controlador adecuado
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Edad...',
                    // Personaliza los estilos según tus preferencias
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Cambia al color deseado
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Cambia al color deseado
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red, // Cambia al color deseado
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onChanged: (value) {
                    miembroModel.textController4 =
                        TextEditingController(text: value);
                  },
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black, // Cambia al color deseado
                  ),
                  // Agrega validadores según tus necesidades
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter some text';
                  //   }
                  //   return null;
                  // },
                ),
              ),
              Container(
                width: 479,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Etnia',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Cambia al color deseado
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Readex Pro',
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: DropdownButtonFormField(
                      //controller: GroupController(),
                      value: miembroModel.DropDownValue4,
                      items: [
                        // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                        DropdownMenuItem(
                          child: Text("Etnia..."),
                          value: -1,
                        ),
                        DropdownMenuItem(
                          child: Text("Afrocolombiano"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Indigena"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("Gitano/Rom"),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text("Raizal"),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Text("Otro"),
                          value: 5,
                        ),
                        DropdownMenuItem(
                          child: Text("Sin Información"),
                          value: 6,
                        ),
                      ],
                      onChanged: (value) {
                        miembroModel.DropDownValue4 = value as int;
                      },
                      // onChange: (v) {
                      //   // Implementa tu lógica aquí
                      // },
                      //values: [1, 2, 3],
                      // groupStyle: GroupStyle(
                      //   activeColor: Colors.black,
                      //   itemTitleStyle: TextStyle(
                      //     fontSize: 13,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 379,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Estado de salud\n',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFFF8F5F1),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  DropdownButtonFormField(
                    //controller: GroupController(),
                    value: miembroModel.DropDownValue5,
                    items: [
                      // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                      DropdownMenuItem(
                        child: Text("Etnia..."),
                        value: -1,
                      ),
                      DropdownMenuItem(
                        child: Text("Afrocolombiano"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Indigena"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("Gitano/Rom"),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text("Raizal"),
                        value: 4,
                      ),
                      DropdownMenuItem(
                        child: Text("Otro"),
                        value: 5,
                      ),
                      DropdownMenuItem(
                        child: Text("Sin Información"),
                        value: 6,
                      ),
                    ],
                    onChanged: (value) {
                      miembroModel.DropDownValue5 = value as int;
                    },
                  ),
                  // SimpleGroupedCheckbox(
                  //   controller: GroupController(),
                  //   itemsTitle: [
                  //     'Requiere asistencia medica',
                  //     'No requiere asistencia medica'
                  //   ],
                  //   values: [1, 2],

                  //   // onSelected: (List<String> selected) {
                  //   //   // Implementa tu lógica aquí con la lista de elementos seleccionados
                  //   // },
                  // ),
                ],
              ),
              Container(
                width: 379,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Regimen\n',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFFF8F5F1),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  DropdownButtonFormField(
                    //controller: GroupController(),
                    value: miembroModel.DropDownValue6,
                    items: [
                      // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                      DropdownMenuItem(
                        child: Text("Etnia..."),
                        value: -1,
                      ),
                      DropdownMenuItem(
                        child: Text("Afrocolombiano"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Indigena"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("Gitano/Rom"),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text("Raizal"),
                        value: 4,
                      ),
                      DropdownMenuItem(
                        child: Text("Otro"),
                        value: 5,
                      ),
                      DropdownMenuItem(
                        child: Text("Sin Información"),
                        value: 6,
                      ),
                    ],
                    onChanged: (value) {
                      miembroModel.DropDownValue6 = value;
                    },
                  ),
                  // SimpleGroupedCheckbox(
                  //   controller: GroupController(),
                  //   itemsTitle: [
                  //     // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                  //     'Contributivo',
                  //     'Subsidiado',
                  //     'Sin Afiliación'
                  //   ],
                  //   values: [1, 2, 3],
                  //   // onSelected: (List<String> selected) {
                  //   //   // Implementa tu lógica aquí con la lista de elementos seleccionados
                  //   // },
                  // )
                ],
              ),
              Container(
                width: 379,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Estado del inmueble\n',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFFF8F5F1),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  DropdownButtonFormField(
                    //controller: GroupController(),
                    value: miembroModel.DropDownValue7,
                    items: [
                      // EN ESTA PARTE SE DEBERIA TOMAR LOS VALUE PARA MANDARLOS A LA BD
                      DropdownMenuItem(
                        child: Text("Estado del inmueble..."),
                        value: -1,
                      ),
                      DropdownMenuItem(
                        child: Text("Habitable"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("No Habitable"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("Destruida"),
                        value: 3,
                      ),
                    ],
                    onChanged: (value) {
                      miembroModel.DropDownValue7 = value;
                    },
                    // onChange: (v) {
                    //   // Implementa tu lógica aquí
                    // },
                    //values: [1, 2, 3],
                    // groupStyle: GroupStyle(
                    //   activeColor: Colors.black,
                    //   itemTitleStyle: TextStyle(
                    //     fontSize: 13,
                    //   ),
                    // ),
                  ),
                ],
              ),
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Necesidades\n',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFFF8F5F1),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: DropdownButtonFormField(
                          //controller: GroupController(),
                          value: miembroModel.DropDownValue8,
                          items: [
                            DropdownMenuItem(
                              child: Text("Necesidades..."),
                              value: -1,
                            ),
                            DropdownMenuItem(
                              child: Text("AHE ALIMEN"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("AHE NO ALIMEN"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text("MAT.REHAB DE VIVIENDA"),
                              value: 3,
                            ),
                            DropdownMenuItem(
                              child: Text("SUB.ARRIENDO"),
                              value: 4,
                            ),
                          ],
                          onChanged: (value) {
                            miembroModel.DropDownValue8 = value;
                          },
                          // onChange: (v) {
                          //   // Implementa tu lógica aquí
                          // },
                          //values: [1, 2, 3],
                          // groupStyle: GroupStyle(
                          //   activeColor: Colors.black,
                          //   itemTitleStyle: TextStyle(
                          //     fontSize: 13,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
