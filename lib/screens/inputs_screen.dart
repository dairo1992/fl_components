import 'package:fl_components/Widgets/Widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'nombre': '',
      'apellidos': '',
      'edad': '',
      'correo': '',
      'contraseña': '',
      'role': ''
    };
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs y Forms')),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormkey,
                child: Column(
                  children: [
                    CustomInputField(
                        labelText: 'Nombre',
                        hintText: 'Nombre de usuario',
                        formProperty: 'nombre',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInputField(
                        labelText: 'Apelldo',
                        hintText: 'Apellido de usuario',
                        formProperty: 'apellidos',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInputField(
                      labelText: 'Edad',
                      hintText: 'Edad de usuario',
                      formProperty: 'edad',
                      formValues: formValues,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 30),
                    CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Correo de usuario',
                      formProperty: 'correo',
                      formValues: formValues,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 30),
                    CustomInputField(
                      labelText: 'Contraseña',
                      hintText: 'Contraseña de usuario',
                      formProperty: 'contraseña',
                      formValues: formValues,
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),
                    DropdownButtonFormField<String>(
                      value: 'Admin',
                      isExpanded: true,
                      items: const [
                        DropdownMenuItem<String>(
                            value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'Empl', child: Text('Empleado')),
                        DropdownMenuItem(
                            value: 'Super Admin', child: Text('Super Admin')),
                      ],
                      onChanged: (value) {
                        formValues['role'] = value.toString();
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myFormkey.currentState!.validate()) {
                            print('Formulario no valido');
                            return;
                          }
                          print(formValues);
                        },
                        child: const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Guardar',
                            textAlign: TextAlign.center,
                          ),
                        ))
                  ],
                ),
              )),
        ));
  }
}
