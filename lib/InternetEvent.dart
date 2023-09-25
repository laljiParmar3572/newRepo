abstract class SignIn{}

class ChangeText extends SignIn{
  String? email;
  String? password;
  ChangeText(this.email,this.password);
}
class SubmitEvent extends SignIn{

}