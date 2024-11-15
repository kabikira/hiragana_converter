import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {

  final _formKey = GlobalKey<FormState>();

  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            controller: _textEditingController,
            maxLines: 5,
            decoration: const InputDecoration(
              hintText: '文章を入力してください'
            ),
          ),
        ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final formState = _formKey.currentState!;
              if (!formState.validate()) {
                return;
              }
              debugPrint('text = ${_textEditingController.text}');
            },
            child: const Text(
              '変換'
          ),
        ),
      ],
    );
  }
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}