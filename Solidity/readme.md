 # Functions
 1. view
 2. pure
 3. simple
 # Default values $ Common DataTypes:
 1. uint - 0
 2. bool - false
 3. address - 40 bits(0) address in 0x form
 4. bytes32 - 32 zeroes in 0x form
 5. string - empty string
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
# Visibilty
1. Usually defined for State variables and Functions (Who can access these)
2. Types -> Public, Private, External, Internal (decides who are there Potential callers, these are basically of 4 types -> Contract itself, Child calling its Parent, Contract A calling Contract B, Outside World for Ex. RemixIDE)<br>
//Gas Increases and Security Decreases in up to down fashion:-
1. Private -> within the contract allowed.
2. Internal -> within and child allowed.
3. External -> Only used for functions and allowed outside only.
4. Public -> All potential callers are allowed.
## Note
By Default State Var. are internal and Functions are public.
# Inheritance
1. The concept where "REUSABILTY" of code is done due to which gas can be saved and code readability increases.
2. "is" -> (replacement of extends of Java) keyword is used to inherit a parent contract in child contract.
3. Two main keywords are:- "Virtual" it gives the permission to child contract to overwrite the parent contract, written in parent contract, Another one is:- "Override" it gives the permission to child to make changes in parent data, written in child.