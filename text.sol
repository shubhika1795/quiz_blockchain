pragma solidity ^0.4.24;
contract TicTacToe{
    
        int[] board = new int[](9);
        address public player1;
        address public player2;
        bool public flag=false;
        int public move_flag;
        int total_move;
        mapping(address => int) addr_to_id;
        function TicTacToe()
        {
            player1 = msg.sender;
            addr_to_id[msg.sender]=1;
            for(uint i=0;i<9;i++)
            {
                board[i]=-1;
            }
            total_move=0;
            move_flag=1;
        }
        
        function register_player()
        {
            player2=msg.sender;
            addr_to_id[msg.sender]=2;
            flag=true;
        }
        function check_state(int val) returns(int)
        {
            if(board[0]==val && board[0]==board[1] && board[1]==board[2])
            {
                return val;
            }
            else if(board[3]==val && board[3]==board[4] && board[4]==board[5])
            {
                return val;
            }
            else if(board[6]==val && board[6]==board[7] && board[7]==board[8])
            {
                return val;
            }
            else if(board[0]==val && board[0]==board[3] && board[3]==board[6])
            {
                return val;
            }
            else if(board[1]==val && board[1]==board[4] && board[4]==board[7])
            {
                return val;
            }
            else if(board[2]==val && board[2]==board[5] && board[5]==board[8])
            {
                return val;
            }
            else if(board[0]==val && board[0]==board[4] && board[4]==board[8])
            {
                return val;
            }
            else if(board[2]==val && board[2]==board[4] && board[4]==board[6])
            {
                return val;
            }
            else
            {
                return 0;
            }
        }
        function update_board(int val,uint place) returns(bool)
        {
            int x=board[place];
            if(val<1 || val>2)
                return false;
            
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
            int temp=addr_to_id[msg.sender];
            if(temp==val && move_flag==val && update_board(val,place))
            {
                total_move++;
                if(move_flag==1)
                {
                    move_flag=2;
                }
                else
                {
                    move_flag=1;
                }
                int x=check_state(val);
                if(x==0)
                {
                    if(total_move<9)
                        return "continue";
                    else
                      return "Draw";
                }
                else if(x==1)
                {
                   return "Player 1 wins!";
                }
                else if(x==2)
                {
                    return "Player 2 wins!";
                }
                 
                 
            }
            else
                return "invalid move";
        }
        

}