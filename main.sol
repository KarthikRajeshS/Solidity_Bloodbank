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
        DONEE
        INDIVIDUAL,
        BLOODBANK,
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
        mapping(uint8=>uint) UnitsAvailable; //blood group is the key and value is the available uints
        mapping(uint8=>uint) UnitsDonated;
    }

    struct breakDownRequest{
        uint UnitsRequested;
        requestStatus Status;
    }

    struct request{
        address id;
        uint UnitsRequired;
        bloodGroup BloodGroup;
        bool isSuccessful;
        string name // temporary
        string address; //temporary
        uint16 contactNumber; //temporary
        mapping(address=>breakDownRequest) BreakDownRequests; //temporary
        address[] Donors; //temporary
    }

    mapping(address=>donor) Donors;
    mapping(address=>bloodBank) BloodBank;

    //mapping(uint8=>address[]) donor
    require(Donors[address1].pincode!=0)



}
