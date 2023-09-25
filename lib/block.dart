import 'package:bloc/bloc.dart';
import 'package:demo1/InternetEvent.dart';
import 'package:demo1/InternetState.dart';
import 'package:connectivity/connectivity.dart';
class InternetBLoc extends Bloc<SignIn,SubmitState>{

    InternetBLoc():super(IntialState()){
        on<ChangeText>((event, emit) {
            if(event.email!.isEmpty){
                emit(EroorState("Enter the valid email"));
            }
            else if (event.password!.length<7){
                emit(EroorState("Enter the valid password"));

            }
            else{
                emit(ValidState());
            }
        });
        on<SubmitEvent>((event, emit){
            emit(Loading());
        });
    }

}