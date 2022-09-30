pragma solidity ^0.8.17;

contract AerospaceContract {
    struct SubPartDetails {
        uint256 partId;
        string aircraft_manufacture_location;
        string assembly_date;
        string technician_name;
    }

    // make mapping for part details
    mapping(uint256 => SubPartDetails) private partDetails;

    constructor() {}

    function setPartDetails(
        uint256 partId,
        string memory aircraft_manufacture_location,
        string memory assembly_date,
        string memory technician_name
    ) public {
        partDetails[partId] = SubPartDetails(
            partId,
            aircraft_manufacture_location,
            assembly_date,
            technician_name
        );
    }

    // get partdetails
    function getPartDetails(uint256 partid)
        public
        view
        returns (
            uint256,
            string memory,
            string memory,
            string memory
        )
    {
        return (
            partDetails[partid].partId,
            partDetails[partid].aircraft_manufacture_location,
            partDetails[partid].assembly_date,
            partDetails[partid].technician_name
        );
    }

    function setLocation(uint256 partId, string memory aircraft_loc) public {
        partDetails[partId].aircraft_manufacture_location = aircraft_loc;
    }

    // set assembly date
    function setAssemblyDate(uint256 partId, string memory assembly_date)
        public
    {
        partDetails[partId].assembly_date = assembly_date;
    }

    // set technician name
    function setTechnicianName(uint256 partId, string memory technician_name)
        public
    {
        partDetails[partId].technician_name = technician_name;
    }

    function getLocation(uint256 partId) public view returns (string memory) {
        return partDetails[partId].aircraft_manufacture_location;
    }

    // get assembly date
    function getAssemblyDate(uint256 partId)
        public
        view
        returns (string memory)
    {
        return partDetails[partId].assembly_date;
    }

    // get technician name
    function getTechnicianName(uint256 partId)
        public
        view
        returns (string memory)
    {
        return partDetails[partId].technician_name;
    }
}
