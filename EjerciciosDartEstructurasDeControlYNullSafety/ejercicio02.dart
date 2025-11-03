/*2) Acceso seguro con `?.`

Define una clase `Usuario` con un atributo `String? email`.

Crea una instancia sin valor de email y muestra `email?.length`.

Demuestra que no se lanza error al acceder a una propiedad nula.*/
class Usuario {
  String? email;
}

void main(List<String> args) {
  Usuario user = Usuario();
  print(user.email?.length);
}
