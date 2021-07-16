pragma solidity ^0.5.0;

contract BloodBank{

    enum bloodGroup{
        A_POS,
        A_NEG,
        B_POS,
        B_NEG,
        AB_POS,
        AB_NEG,
        O_POS,
        O_NEG
    }

    enum userType{
        INDIVIDUAL,
        ORGANISATION,
    }

    enum requestStatus{
        DONOR_ACCEPTED,
        DONEE_RECEIVED// SUCCESS
    }

    struct individualDonor{
        bloodGroup BloodGroup;
        string name;
        string contactNumber;
        uint64 pincode;
        uint UnitsDonated;
        uint LastDonatedTimeStamp;
    }

    struct bloodBank{
        string name;
        string contactNumber;
        uint64 pincode;
        string Address;
        mapping(uint8=>uint) UnitsAvailable; //blood group is the key and value is the available uints
        mapping(uint8=>uint) UnitsDonated;
    }
    

    struct breakDownRequest{
        uint UnitsRequested;
        requestStatus Status;
    }
    

    struct request{
        address requestid;
        uint UnitsRequired;
        bloodGroup BloodGroup;
        bool isSuccessful;
        address requestedby;
        
        mapping(address=>breakDownRequest) BreakDownRequests; //temporary
        address[] Donors; //temporary
    }

    mapping(address=>individualDonor) iDonors;
    mapp
    mapping(address=>bloodBank) BloodBank;
    mapping(bytes32=>request) Request;
    
   
    

    
    function individualRegistration(string memory name,string memory contactNumber,uint64 pincode) external{
        //individualdonors.push(individualDonors(name,contactNumber,pincode,null,null));
        iDonors[msg.sender]=individualDonors(name,contactNumber,pincode,null,null);
        
            }
            
          
    
    function bloodBankRegistration (string memory name,string memory contactNumber,uint64 pincode,string memory Address ) external {
     BloodBank[msg.sender]=bloodBank(name,contactNumber,pincode,Address);   
    
        
    }
    
    struct request{
        uint UnitsRequired;
        bloodGroup BloodGroup;
        bool isSuccessful;
        address requestedby;
        
        mapping(address=>breakDownRequest) BreakDownRequests; //temporary
        address[] Donors; //temporary
    }
    
    
    function requestBlood (unit8 blood, uint8 quantity ) {
        bytes32 requestid = keccak256(abi.encodePacked(now, msg.sender));
        Request[requestid] = request(quantity, bloodGroup(blood),false,msg.sender);
        }
    
        
        
}


//mapping bllod group and id and pincode
//in request blood flood returning the map nbased on blood group
//particular id and returning data --> msg sender ---> donee ---------->




 
 
 
 
 
 
    
    
    


}
