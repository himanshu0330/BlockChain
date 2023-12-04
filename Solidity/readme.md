 # Functions
 =>view
 =>pure
 =>simple
 # Default values $ Common DataTypes:
 =>uint - 0
 =>bool - false
 =>address - 40 bits(0) address in 0x form
 =>bytes32 - 32 zeroes in 0x form
 =>string - empty string
# Constants
 keyword is used for static variable to consume less space on the blockchain these variables are constant through out the contract example sender address (40 hexa decimal)
# Memory
 keyword is used for string errors as string directly takes space in block chain (default) while other datatypes take space in stack or other storage.
# Enums DataType
 These are basically User defined Datatypes which are used when there are more than two possibilities for example is someone is buying something from an online store then for a order there are 5 Possibities 
        Pending, //0
        Shipped, //1
        Accepted, //2
        Rejected, //3
        Cancel //4
 It Increase the readability (Number to Alphabets conversion)
 also help as Switch case with require keyword
# Struct DataType
 Structure -> Reference -> Address
 basically a Array type structure, it is stored in Storage area (Not memory)
# Mapping
Suppose i have to  account information by passing a account address i.e. address -> struct{}