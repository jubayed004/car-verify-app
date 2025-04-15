import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:intl/intl.dart';

class EmployeeDateField extends StatefulWidget {
  const EmployeeDateField({super.key});

  @override
  _EmployeeDateFieldState createState() => _EmployeeDateFieldState();
}

class _EmployeeDateFieldState extends State<EmployeeDateField> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _textEditingController.text =
            DateFormat('dd/MM/yyyy').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1,color: AppColors.textFiledBorderColor)
      ),
      child: TextFormField(
        readOnly: true,
        style: const TextStyle(fontSize: 16, color: Colors.black),
        controller: _textEditingController,
        textAlignVertical: TextAlignVertical.center,
        onTap: () => _selectDate(context),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 10, right: 10, ),
          border: InputBorder.none,
          filled: false,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: 'DD/MM/YYYY',
          suffixIcon: Icon(Icons.calendar_today),
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ),
    );
  }
}


