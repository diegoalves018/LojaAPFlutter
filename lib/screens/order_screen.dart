import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderScreen extends StatelessWidget {

  final String orderId;

  OrderScreen(this.orderId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedido realizado"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check,
            color: Theme.of(context).primaryColor,
            size: 80.0,
            ),
            Text("Pedido realizado com sucesso!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            Text("Código do pedido: $orderId", style: TextStyle(fontSize: 16.0),
            ),
            TextButton(onPressed: abrirWhatsApp,
                child: Text("Clique aqui para entrar em contato com o(a) vendedor(a) e efetuar o pagamento"))
          ],
        ),
      ),
    );
  }

  abrirWhatsApp() async {
    var whatsappUrl = "whatsapp://send?phone=+5561996470331&text=Olá, tudo bem? Necessito do pix para efetuar pagamento! Código do pedido:  $orderId";

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }
}
