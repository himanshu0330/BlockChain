 # Functions
 =>view<br>
 =>pure<br>
 =>simple<br>
 # Default values $ Common DataTypes:
 =>uint - 0<br>
 =>bool - false<br>
 =>address - 40 bits(0) address in 0x form<br>
 =>bytes32 - 32 zeroes in 0x form<br>
 =>string - empty string<br>
# Constants
 keyword is used for static variable to consume less space on the blockchain these variables are constant through out the contract example sender address (40 hexa decimal)
# Memory
 keyword is used for string errors as string directly takes space in block chain (default) while other datatypes take space in stack or other storage.
# Enums DataType
 These are basically User defined Datatypes which are used when there are more than two possibilities for example is someone is buying something from an online store then for a order there are 5 Possibities 
        Pending, //0<br>
        Shipped, //1<br>
        Accepted, //2<br>
        Rejected, //3<br>
        Cancel //4<br>
 It Increase the readability (Number to Alphabets conversion)
 also help as Switch case with require keyword
# Struct DataType
 Structure -> Reference -> Address
 basically a Array type structure, it is stored in Storage area (Not memory)
# Mapping
Suppose i have to  account information by passing a account address i.e. address -> struct{}