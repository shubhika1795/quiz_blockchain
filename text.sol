pragma solidity ^0.4.24;
contract TicTacToe{
    
        uint[] board = new uint[](9);
        address public player1;
        address public player2;
        
        function TicTacToe()
        {
            player1 = msg.sender;
        }
        
        function register_player()
        {
            player2=msg.sender;
        }
    

}