import 'package:crypto_plus/core/exports.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.keyBoardType,
    this.nextFocusNode,
    this.focusNode,
    this.textInputAction,
    this.controller,
    this.obscureText,
    this.autoFocus,
  });
  final String hint;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextEditingController? controller;
  final bool? obscureText;
  final bool? autoFocus;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyBoardType,
      textInputAction: widget.textInputAction,
      focusNode: widget.focusNode,
      controller: widget.controller,
      obscureText: widget.obscureText ?? false,
      autofocus: widget.autoFocus ?? false,
      decoration: InputDecoration(
        hint: Text(widget.hint),
        filled: true,
        hintStyle: TextStyle(color: AppColors.textHint),
        fillColor: AppColors.white,
        focusColor: AppColors.primary,

        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.large,
          borderSide: BorderSide(width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.large,
          borderSide: BorderSide(width: 1, color: AppColors.primary),
        ),
      ),

      onSubmitted: (value) {
        if (widget.focusNode != null) {
          FocusScope.of(context).requestFocus();
        } else {
          FocusScope.of(context).unfocus();
        }
      },
    );
  }
}
