import 'package:flutter/material.dart';
import 'package:gunung2/mobile/components/text_judul.dart';
import 'package:gunung2/mobile/layout/section_detail/deskripsi_detail.dart';
import 'package:gunung2/mobile/layout/section_detail/judul_detail.dart';
import 'package:gunung2/models/mountain_models.dart';

class MobileDetailPage extends StatefulWidget {
  final List<MountainModels> mountain;
  final int index;
  const MobileDetailPage({super.key, required this.mountain, required this.index});

  @override
  State<MobileDetailPage> createState() => _MobileDetailPageState();
}

class _MobileDetailPageState extends State<MobileDetailPage> {
  int _expandedIndex = -1;

  @override 

  Widget build(BuildContext context) {
     MountainModels mountain = widget.mountain[widget.index];
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ${mountain.nameMountain}'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey.shade100),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JudulDetail(widget: widget),
              SizedBox(
                height: 10,
              ),
              DeskripsiDetail(widget: widget),
             Column(
  children: [
    TextJudul(fontSize: 20, text: 'Fakta menarik Tentang ${widget.mountain[widget.index].nameMountain}', color: Colors.black),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 100,
        child: ExpansionPanelList(
          elevation: 1,
          expandedHeaderPadding: EdgeInsets.all(12),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _expandedIndex = _expandedIndex == index ? -1 : index;
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text('Geographi'),
                );
              },
              body: ListTile(
                title: Text(widget.mountain[widget.index].geografiDescription),
              ),
              isExpanded: _expandedIndex == 0,
            ),
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text('Iklim'),
                );
              },
              body: ListTile(
                title: Text(widget.mountain[widget.index].iklimDescription),
              ),
              isExpanded: _expandedIndex == 1,
            ),
          ],
        ),
      ),
    ),
  ],
)
            ],
          ),
        ),
      ),
    );
  }
}
