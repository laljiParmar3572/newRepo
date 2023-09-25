abstract class SubmitState{}
class IntialState extends SubmitState{}
class ValidState extends SubmitState{}
class EroorState extends SubmitState{
  String? error;
  EroorState(this.error);
}
class Loading extends SubmitState{}