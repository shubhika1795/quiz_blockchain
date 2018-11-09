pragma solidity ^0.4.24;
contract TicTacToe{
    
        int[] board = new int[](9);
        address public player1;
        address public player2;
        bool public flag=false;
        function TicTacToe()
        {
            player1 = msg.sender;
            for(uint i=0;i<9;i++)
            {
                board[i]=-1;
            }
        }
        
        function register_player()
        {
            player2=msg.sender;
            flag=true;
        }
        function check_state() returns(uint)
        {
            
        }
        function update_board(int val,uint place) returns(bool)
        {
            int x=board[place];
            if(x==-1 && flag==true)
            {
                board[place]=val;
                return true;
            }
            else
                return false;
            
        }
        function move(int val,uint place) returns(string)
        {
            if(update_board(val,place))
            {
                uint x=check_state();
                if(x==0)
                {
                    
                }
                else if(x==1)
                {
                    
                }
                else if(x==2)
                {
                    
                }
                 
                 
            }
            else
                return "invalid";
        }
        

}