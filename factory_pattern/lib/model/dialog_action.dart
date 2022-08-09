// ignore_for_file: public_member_api_docs, sort_constructors_first
class DialogAction<T> {
  T child;
  Function()? onPressed;
  DialogAction({
    required this.child,
    required this.onPressed,
  });
}
