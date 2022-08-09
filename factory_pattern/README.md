# factory_pattern

# Descricao sobre o exemplo

1 - Criar abstract class IDialog
    - definir o comportamento de quem vai implementar deve seguir.

2 - Criar um model Dialog Action passando <T>
    - definir o modelo do action (um child e um onpressed)

3 - Criar o componente conforme conforme a plataforma por exemplo :
    - criar o IosDialog e implementar o IDialog .. return CupertinoAlertDialog();
    - criar o AndroidDialog e implementar o IDialog . return AlertDialog().

4 - Agora precisamos criar a Factory de fato que é quem vai gerenciar e retornar pra gente qual componente deve ser mostrado ...

    - criar a classe DialogFactory 
    
        - criar metodo para mostrar de fato ...
        static Future<T?> showAlertDialog(context, {
            required Widget title,
            required Widget content,
            required List<DialogAction> actions,
        }){
            IDialog dialog;
            if (Platform.isAndroid) {
                dialog = AndroidDialog();
            } else {
                dialog = IosDialog();
            }

            return showDialog(
                context: context,
                builder: (context) {
                    return dialog.criar(context, title, content, actions);
                },
            );
        } 