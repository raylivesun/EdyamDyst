import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

var p1TypeMessages = pragma;

mixin name {
  var p2TypeMessages = pragma;
}

mixin names on Object {
  var p2TypeMessages = pragma;
}

class Append extends A {

}

class A {
  var p1TypeMessages = pragma;
}

@pragma('Tool:pragma-name', [param1, param2])
class Foo {
  get param1 => null;
  
  get param2 => null;
 }
 
 mixin param2 {
  var paramenters = Object.hash(object1, object2);
 
 
  static Type get dimension1 => Object;
  
  static Object? get object1 => null;
  
  static Object? get object2 => null;}
 
 mixin param1 {
  var parameters = Object;
 }

 final class MyStruct extends Struct {
  @Array(8)
  external Array<Uint8> inlineArray;

  @Array(2, 2, 2)
  external Array<Array<Array<Uint8>>> threeDimensionalInlineArray;
}

@pragma('OtherTool:other-pragma')
void foo() { }


final class MyStructLocal extends Struct {
  @Array(8)
  external Array<Uint8> inlineArray;

  @Array(2, 2, 2)
  external Array<Array<Array<Uint8>>> threeDimensionalInlineArray;
}


void main() async {
  // Read the current time from an NTP server.
  final serverAddress = (await InternetAddress.lookup('pool.ntp.org')).first;
  final clientSocket = await RawDatagramSocket.bind(
      serverAddress.type == InternetAddressType.IPv6
          ? InternetAddress.anyIPv6
          : InternetAddress.anyIPv4,
      0);
  final ntpQuery = Uint8List(48);
  ntpQuery[0] = 0x23; // See RFC 5905 7.3

  clientSocket.listen((event) {
    switch (event) {
      case RawSocketEvent.read:
        clientSocket.receive();
        // Parse `datagram.data`
        clientSocket.close();
        break;
      case RawSocketEvent.write:
        if (clientSocket.send(ntpQuery, serverAddress, 123) > 0) {
          clientSocket.writeEventsEnabled = false;
        }
        break;
      case RawSocketEvent.closed:
        break;
      default:
        throw "Unexpected event $event";
    }
  });
}
