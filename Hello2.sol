// SPDX-License-Identifier: MIT
pragma solidity >=0.8.11;
//it is better tha we defiend state variable first of contract
contract FirstDeploy{

string public sName;
string public sFamily;
string public newStr;
string public sNewVar;
constructor(){

sName="Hello Solidity";
sFamily="my name is saman";
newStr="salam";

}
//We can not returns state variable just changed in blockchain so this function dont return somethings
function  setHello(string memory name,string  memory family,string memory NewVar ) public   {
sName=name;
sFamily=family;
sNewVar=NewVar;


}
//call by value
function getHello()public view returns(string memory,string memory) {

 return (sName,sNewVar);

}

//call by refernc 
function getHello3()public view returns(string memory output){
 output=newStr;
}
//pure function
function getTestPureFunction()public pure returns(string memory,uint256){
 string memory memoryValue;
 uint256 number=5;
 memoryValue="in the nam of humanity";
 return (memoryValue,number);

}

}

