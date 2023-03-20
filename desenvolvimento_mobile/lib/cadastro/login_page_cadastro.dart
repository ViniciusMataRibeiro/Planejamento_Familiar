//import 'package:desenvolvimento_mobile/login/login_controller.dart';
import 'package:desenvolvimento_mobile/cadastro/login_cadastro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageCadastro extends GetView<LoginCadastroController> {
  const LoginPageCadastro({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/tela_registro.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              const SizedBox(height: 100),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                child: Form(
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontStyle: FontStyle.italic,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                      ),
                      labelText: 'Nome',
                      prefixIcon:
                          Icon(Icons.login_rounded, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                      style: const TextStyle(
                        fontSize: 15, 
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),
                          ),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        )),
                        labelText: 'Data de Nascimento',
                        prefixIcon:
                            const Icon(Icons.calendar_month, color: Colors.white),
                        suffixIcon: GestureDetector(
                          child: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white),
                          onTap: () {},
                        ),
                      ),
                    ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                child: Form(
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontStyle: FontStyle.italic,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                      ),
                      labelText: 'E-mail',
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.white),
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                      style: const TextStyle(
                        fontSize: 15, 
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),
                          ),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        )),
                        labelText: 'Senha',
                        prefixIcon:
                            const Icon(Icons.lock_rounded, color: Colors.white),
                        suffixIcon: GestureDetector(
                          child: const Icon(
                              Icons.visibility_outlined,
                              color: Colors.white),
                          onTap: () {},
                        ),
                      ),
                    ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                      style: const TextStyle(
                        fontSize: 15, 
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),
                          ),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        )),
                        labelText: 'Confirmar senha',
                        prefixIcon:
                            const Icon(Icons.lock_rounded, color: Colors.white),
                        suffixIcon: GestureDetector(
                          child: const Icon(
                              Icons.visibility_outlined,
                              color: Colors.white),
                          onTap: () {},
                        ),
                      ),
                    ),
              ),

              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 70, right: 70),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor:const Color.fromARGB(255, 255, 255, 255),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                      ),
                  ),
                  child: const Text('Próximo',
                      style: TextStyle(fontSize: 23, color: Colors.redAccent)),
                ),
              ),
             const SizedBox(height: 20)              
              
            ],
          ),
        ),
      ),
    );
  }
}