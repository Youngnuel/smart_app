import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/add_card.dart';
import 'package:smart_app/add_card_confirm.dart';
import 'package:smart_app/add_card_password.dart';
import 'package:smart_app/add_card_success.dart';
import 'package:smart_app/app_option.dart';
import 'package:smart_app/confirm_data.dart';
import 'package:smart_app/create_account.dart';
import 'package:smart_app/crowd_finish.dart';
import 'package:smart_app/crowd_group.dart';
import 'package:smart_app/crowd_plans.dart';
import 'package:smart_app/crowd_public.dart';
import 'package:smart_app/crowd_savings.dart';
import 'package:smart_app/crowd_start.dart';
import 'package:smart_app/crowd_success.dart';
import 'package:smart_app/dashboard.dart';
import 'package:smart_app/forgot_otp.dart';
import 'package:smart_app/forgot_password.dart';
import 'package:smart_app/guarantor_page.dart';
import 'package:smart_app/identification.dart';
import 'package:smart_app/loan_attachments.dart';
import 'package:smart_app/loan_confirm_data.dart';
import 'package:smart_app/loan_password.dart';
import 'package:smart_app/loan_success.dart';
import 'package:smart_app/login_page.dart';
import 'package:smart_app/low_interest_rate.dart';
import 'package:smart_app/main_savings.dart';
import 'package:smart_app/next_of_kin.dart';
import 'package:smart_app/onboarding.dart';
import 'package:smart_app/otp_page.dart';
import 'package:smart_app/save_dollar.dart';
import 'package:smart_app/savings.dart';
import 'package:smart_app/target_personal.dart';
import 'package:smart_app/target_plans.dart';
import 'package:smart_app/target_savings.dart';
import 'package:smart_app/target_start.dart';
import 'package:smart_app/target_success.dart';
import 'package:smart_app/target_finish.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SavingsApp());
}

class SavingsApp extends StatefulWidget {
  @override
  State<SavingsApp> createState() => _SavingsAppState();
}

class _SavingsAppState extends State<SavingsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Onboarding.id,
      routes: {
        Onboarding.id: (context) => Onboarding(),
        CreateAccount.id: (context) => CreateAccount(),
        OtpPage.id: (context) => OtpPage(),
        Identification.id: (context) => Identification(),
        ConfirmData.id: (context) => ConfirmData(),
        LoginPage.id: (context) => LoginPage(),
        ForgotPassword.id: (context) => ForgotPassword(),
        ForgotOtp.id: (context) => ForgotOtp(),
        Dashboard.id: (context) => Dashboard(),
        Savings.id: (context) => Savings(),
        TargetSavings.id: (context) => TargetSavings(),
        TargetStart.id: (context) => TargetStart(),
        TargetPersonal.id: (context) => TargetPersonal(),
        TargetFinish.id: (context) => TargetFinish(),
        TargetSuccess.id: (context) => TargetSuccess(),
        TargetPlans.id: (context) => TargetPlans(),
        CrowdSavings.id: (context) => CrowdSavings(),
        CrowdStart.id: (context) => CrowdStart(),
        CrowdGroup.id: (context) => CrowdGroup(),
        CrowdPublic.id: (context) => CrowdPublic(),
        CrowdFinish.id: (context) => CrowdFinish(),
        CrowdSuccess.id: (context) => CrowdSuccess(),
        CrowdPlans.id: (context) => CrowdPlans(),
        LoanConfirmData.id: (context) => LoanConfirmData(),
        LoanPassword.id: (context) => LoanPassword(),
        LowInterestRate.id: (context) => LowInterestRate(),
        LoanAttachments.id: (context) => LoanAttachments(),
        NextOfKin.id: (context) => NextOfKin(),
        GuarantorPage.id: (context) => GuarantorPage(),
        LoanSuccess.id: (context) => LoanSuccess(),
        SaveDollar.id: (context) => SaveDollar(),
        MainSavings.id: (context) => MainSavings(),
        AddCard.id: (context) => AddCard(),
        AddCardConfirm.id: (context) => AddCardConfirm(),
        AddCardPassword.id: (context) => AddCardPassword(),
        AddCardSuccess.id: (context) => AddCardSuccess(),
        AppOption.id: (context) => AppOption(),
      },
    );
  }
}
