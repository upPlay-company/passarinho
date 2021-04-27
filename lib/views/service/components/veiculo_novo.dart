import 'package:flutter/material.dart';

class VeiculoNovo extends StatefulWidget {
  @override
  _VeiculoNovoState createState() => _VeiculoNovoState();
}

class _VeiculoNovoState extends State<VeiculoNovo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D2D3A),
      appBar: AppBar(
        flexibleSpace: Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/FAQ screen.png"),
                  fit: BoxFit.fill,
                ))),
        title: Text('Adicionar Veiculo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                        hintText: "Dono *",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                        hintText: "Placa *",
                        filled: true,
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Marca *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Modelo *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Ano Modelo *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Km *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Direção *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Câmbio *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Motor *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Válvula *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Cor *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *0.45,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 16, 5, 16),
                            hintText: "Combustível *",
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Text('* Obrigatório', style: TextStyle(color: Colors.white, fontSize: 16))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    child: Text('Salvar'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: (){},
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
