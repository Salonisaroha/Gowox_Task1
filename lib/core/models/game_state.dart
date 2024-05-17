import 'package:tic_tac_toe/core/constants/enums.dart';
import 'package:tic_tac_toe/core/exceptions/exceptions.dart';

class GameState{
  final List<Player?> fields;
  GameState() : fields = [null, null, null, null, null, null, null, null, null];

  GameState.assign(this.fields);

  GameState claimField(int field){
    if(field<0 || field>8 || fields[field]!= null){
      throw InvalidClaimException();
    }
    if(status != GameStatus.p1Turn && status != GameStatus.p2Turn){
      throw InvalidClaimException();
    }
    final newFields = fields;
    newFields[field] = status == GameStatus.p1Turn ? Player.p1 : Player.p2;
    return GameState.assign(newFields);
  }
  GameStatus get status{
    if(_hasThreeInRow(Player.p1)) return GameStatus.p1Won;
    if(_hasThreeInRow(Player.p2)) return GameStatus.p2Won;
    final occupiedFields = fields.where((field)=>field != null);
    if(occupiedFields.length==9) return GameStatus.draw;
    final hasEvenAmountOfOccupiedFields = occupiedFields.length%2==0;
     return hasEvenAmountOfOccupiedFields ? GameStatus.p1Turn:GameStatus.p2Turn;
  }
  bool _hasThreeInRow(Player player){
    if(
    fields[0]==Player && fields[1]== player&& fields[2]==player||
    fields[3]==Player && fields[4]== player&& fields[5]==player||
    fields[6]==Player && fields[7]== player&& fields[8]==player||
    fields[0]==Player && fields[3]== player&& fields[6]==player||
    fields[1]==Player && fields[4]== player&& fields[7]==player||
    fields[2]==Player && fields[5]== player&& fields[8]==player||
    fields[0]==Player && fields[4]== player&& fields[8]==player||
    fields[2]==Player && fields[4]== player&& fields[6]==player ){
      return true;
    }
    return false;
  }
}
