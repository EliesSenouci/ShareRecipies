import 'package:flutter/material.dart';
import 'package:share_recipies/di/service_locator.dart';
import 'package:share_recipies/ui/login/login_viewmodel.dart';
import 'package:share_recipies/ui/widgets/custom_plain_button.dart';
import 'package:share_recipies/ui/widgets/custom_text_form_field.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => sl<LoginViewModel>(),
      builder: (context, viewModel, child) => Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(child: Form(viewModel)),
            ],
          ),
        ),
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form(LoginViewModel viewModel, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 8,
          right: MediaQuery.of(context).size.width / 8
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomTextFormField(hintText: "Email", isEmail: true,),
          SizedBox(height: 15,),
          CustomTextFormField(hintText: "Password", isPassword: true,),
          SizedBox(height: 15,),
          CustomPlainButton(text: "Valider"),

        ]
      ),
    );
  }
}
