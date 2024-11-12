import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsVew(),
      floatingActionButton: FloatingActionButton(
        onPressed: context.pop,
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsVew extends StatelessWidget {
  const _ButtonsVew();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Eleveted ')),
            const ElevatedButton(onPressed: null, child: Text('Eleveted Disabled')),

            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Eleveted Icon')
            ),

            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {}, 
              // icon: const Text('Filled'),
              icon: const Icon(Icons.food_bank_rounded),
              label: const Text('Filled Icon'),
            ),

            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.track_changes_rounded),
              label: const Text('Outline Icon'),
            ),

            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.nordic_walking_sharp),
              label: const Text('Text Icon'),
            ),

            const _CustomButton(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: const WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Custom Button', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}