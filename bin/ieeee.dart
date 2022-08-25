import 'dart:io';


main() {
  List board = [
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
  ];
  // board[x-1] = '-';
  // print('value aleardy exist  ');
  // ;return  inp(board)
  dis() {
    print('|' + board[0] + '|' + board [1 ] + '|' + board [ 2] + '|');
    print('|' + board[3] + '|' + board [4 ] + '|' + board [ 5] + '|');
    print('|' + board[6] + '|' + board [7 ] + '|' + board [ 8] + '|'
    );
  }
  check(board) {
    String plz = ' x ';
    var p2 = '0';
    if (board[0] == board[1] && board[2] == plz
    || board[0] == board[1] && board[2] == p2){
      return true ;
    } else if (board[3] == board[4] && board[5] == plz
        || board[3] == board[4] && board[5] == p2){
         return true ;
    } else if (board[6] == board[7] && board[8] == plz
        || board[6] == board[7] && board[8] == p2){
      return true ;
    }else if (board[3] == board[0] && board[6] == plz
        || board[3] == board[0] && board[6] == p2){
      return true ;
  }else if (board[3] == board[0] && board[6] == plz
        || board[3] == board[0] && board[6] == p2) {
      return true;
    }else if (board[1] == board[4] && board[7] == plz
        || board[1] == board[4] && board[7] == p2) {
      return true;

  }else if (board[2] == board[5] && board[8] == plz
        || board[2] == board[5] && board[8] == p2) {
      return true;


}else if (board[0] == board[4] && board[8] == plz
        || board[0] == board[4] && board[8] == p2) {
      return true;
  }else if (board[2] == board[4] && board[6] == plz
        || board[2] == board[4] && board[6] == p2) {
      return true;

    }else {
      return false ;
    }

  }
  inp(board){
   print('enter the position ');
   int x = int.parse(stdin.readLineSync()!);
   if (board[x-1] != '-'){
     print('value aleardy exist  ');
     return  inp(board) ;
   }else {
     return x ;
   }


  }
  print('player num  1 :');
  int player1 = int.parse(stdin.readLineSync()!);
  print('player num  2 :');
  int player2 = int.parse(stdin.readLineSync()!);
  dis();
  for ( int i=0; i<= 9;i++ ){
    if (i%2==0){
       var x=inp(board);
       board[x-1]='x' ;
       dis();
    }if (check(board)

    ){
      print('player 1 is win ') ;
      break ;
    }else{
      var x=inp(board);
      board[x-1]='o' ;
      dis();
    }if (check(board)

    ){
      print('player 2 is win ') ;
      break ;

    }

  }


}