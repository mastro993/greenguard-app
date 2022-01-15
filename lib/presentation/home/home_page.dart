import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenguard_app/presentation/home/bloc/home_bloc.dart';
import 'package:greenguard_app/presentation/home/widgets/app_bar_widget.dart';
import 'package:greenguard_app/presentation/home/widgets/mode_button.dart';
import 'package:greenguard_app/presentation/home/widgets/rules_info_widget.dart';
import 'package:greenguard_app/presentation/home/widgets/scan_button.dart';
import 'package:greenguard_app/presentation/widgets/link_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeBloc, HomeState>(
        listener: (ctx, state) {},
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AppBarWidget(),
                const SizedBox(height: 20),
                const RulesInfoWidget(),
                const SizedBox(height: 10),
                const LinkButton(
                  text: 'Leggi le domande frequenti',
                  url: 'https://www.dgc.gov.it/web/faq.html#verifica19',
                ),
                const SizedBox(height: 10),
                const LinkButton(
                  text: 'Leggi la Privacy policy',
                  url: 'https://www.dgc.gov.it/web/pn.html',
                ),
                Expanded(child: Container()),
                const SizedBox(height: 15),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Color(0xFF385170),
                      height: 1.6,
                      fontSize: 25,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Verifica una\n'),
                      TextSpan(
                        text: 'Certificazione\nverde COVID-19',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const ModeButton(),
                const SizedBox(height: 10),
                const ScanButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
