pragma solidity >=0.7.0 <0.8.0;

//@Creator definition contract

contract ownable3{
    
    address creator;
    
    constructor(){
        creator = msg.sender;
    }
    function isCreator() public view returns(bool){
        return msg.sender==creator;
    }
    modifier CreatorOnly{
        require(isCreator());
        _;
    }
  
    function getCreator() public view returns(address){
        return creator;
    }
    
    
    
}
