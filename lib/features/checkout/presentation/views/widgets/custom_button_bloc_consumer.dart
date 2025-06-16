import 'package:checkout_payment_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_app/features/checkout/presentation/managers/payment_cubit/payment_cubit.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => const ThankYouView()));
        } else if (state is PaymentFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            if (state is PaymentLoading) return;
            PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
              amount: '100',
              currency: 'USD',
            );

            context
                .read<PaymentCubit>()
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          isLoading: state is PaymentLoading,
          title: 'Continue',
        );
      },
    );
  }
}
