import 'package:flutter/material.dart';
import 'package:myapp/common/styles/spacing_styles.dart';
import 'package:myapp/utils/constants/sizes.dart';
import 'package:myapp/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Title and subtitle.
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TTexts.LogInMaintitle,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.LogInSubtitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
              Form(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems),
                child: Column(
                  children: [
                    //Email
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    //Password
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields / 2,
                    ),
                    //Remeber me
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(TTexts.rememberMe),
                            TextButton(
                                onPressed: () {},
                                child: const Text(TTexts.forgetPassword)),
                          ],
                        ),
                        //Forget Password
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        //Sign In button
                        SizedBox(
                          width: 400,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.signIn)),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        //Create Account Button
                        SizedBox(
                          width: 400,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(TTexts.createAccount)),
                        )
                      ],
                    ),
                  ],
                ),
              ))
            ],
          )),
    ));
  }
}
