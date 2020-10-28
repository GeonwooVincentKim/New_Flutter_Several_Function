import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class AssetNetworkImage extends StatelessWidget{
  final String path;
  final BoxFit fit;

  AssetNetworkImage({
    @required this.path,
    this.fit
  });
  
  @override
  Widget build(BuildContext context) {
    return path.contains('http') ?
      Image.network(path, fit: fit) : 
      Image.asset(path ?? 'assets/images/1.jpg', fit: fit);
  }
}