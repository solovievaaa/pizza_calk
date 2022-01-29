// итог:

import 'package:flutter/material.dart';

class SwitchesDemoScreen extends StatefulWidget {
  const SwitchesDemoScreen({Key? key}) : super(key: key);

  @override
  _SwitchesDemoScreenState createState() => _SwitchesDemoScreenState();
}

enum SkillLever { junior, middle, senior }

class _SwitchesDemoScreenState extends State<SwitchesDemoScreen> {
  bool _checked = false; // задаем переменную в классе
  bool _confirmAgreement = true;
  SkillLever? _skillLever = SkillLever.junior;

  void _onCheckedChange(bool? val) {
    // ? позволяет хранить пустое значение
    setState(() {
      _checked = !_checked;
    });
  }

  void _onSkillLevelChanged(SkillLever? value) {
    setState(() {
      _skillLever = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Row(
                // обернули CheckBox в видежт Row - теперь текст и кнока в одной строке
                children: [
                  Checkbox(value: _checked, onChanged: _onCheckedChange),
                  Text('Выбор'),
                ],
              ),
              CheckboxListTile(
                // позволяет задать текст и кнопку; кликается и сам текст, и место для галочки
                  title: Text('Принять условия соглашения'),
                  value: _confirmAgreement,
                  onChanged: (val) {
                    setState(() {
                      // если нет setState - система не знает, что надо его менять (?)
                      _confirmAgreement = !_confirmAgreement;
                    });
                  }),
              Row(
                children: [
                  Switch(value: _checked, onChanged: _onCheckedChange),
                  const Text('Включить'),
                ],
              ),
              SwitchListTile(
                  title: const Text('Выключить'),
                  value: _checked,
                  onChanged: _onCheckedChange),

              const Text('Уровень навыков: '),

              RadioListTile<SkillLever>(
                title: const Text('junior'),
                value: SkillLever.junior,
                groupValue: _skillLever,
                onChanged: _onSkillLevelChanged,
              ),
              RadioListTile<SkillLever>(
                title: const Text('middle'),
                value: SkillLever.middle,
                groupValue: _skillLever,
                onChanged: _onSkillLevelChanged,
              ),
              RadioListTile<SkillLever>(
                title: const Text('senior'),
                value: SkillLever.senior,
                groupValue: _skillLever,
                onChanged: _onSkillLevelChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
