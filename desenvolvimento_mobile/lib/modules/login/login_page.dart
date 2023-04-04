import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/tela_login.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Center(
                child: Container(
                  height: 140,
                  width: 140,
                  margin: const EdgeInsets.only(top: 70, bottom: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/design_login.png'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 60,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
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
                          Radius.circular(100),
                        ),
                        borderSide:
                            BorderSide(color: Colors.white, width: 0.9),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      labelText: 'Usuário / E-mail',
                      prefixIcon:
                          Icon(Icons.login_rounded, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                padding: const EdgeInsets.all(8),
                child: Obx(
                  () => TextFormField(
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                    obscureText: controller.showPassword.value,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontStyle: FontStyle.italic,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        borderSide: BorderSide(color: Colors.white, width: 0.9),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      labelText: 'Senha',
                      prefixIcon:
                          const Icon(Icons.lock_rounded, color: Colors.white),
                      suffixIcon: GestureDetector(
                        child: Icon(
                            controller.showPassword.value == false
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: Colors.white),
                        onTap: () {
                          controller.toggleShowPassword();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 28, right: 28),
                child: ElevatedButton(
                  onPressed: () => Get.toNamed('/metContracep'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        side: BorderSide(width: 2, color: Colors.black12)),
                  ),
                  child: const Text('Entrar',
                      style: TextStyle(fontSize: 30, color: Colors.redAccent)),
                ),
              ),
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Get.toNamed('/cadastro'),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Não tem uma Conta? Cadastre-se aqui!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
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
