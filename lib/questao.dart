class Questao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String texto;

    Questao(this.texto)

    return Container(
      Text(perguntas[_perguntaSelecionada])
    );
  }
}