// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
pragma experimental ABIEncoderV2;
contract DTinder{
    //1. Register User
    //2. Matching: swipe right / left
    //3. Messaging: send messages to matches
    //After Reading All contracts and working on all contracts in std-0 ,std-1,std-2,std-3,std-4
    //This is tinder application based on solidity 
    enum Gender {
        MALE,FEMALE,OTHER
    }
    enum SwipeStatus{
        UNKNOWN,
        LIKE,
        DISLIKE
    }
    struct User{
        string name ;
        string city;
        Gender gender;
        uint age;
        string picUrl;
    }

    struct SwipeSession{
        uint start;
        uint count;
    }

    mapping(address=>User) private users;
    mapping(bytes32=>mapping(uint=>address[])) private userIdsByCity;
    mapping(address=>mapping(address=>SwipeStatus)) private swipes;
    mapping(address=>SwipeSession) private swipeSessions;

    event NewMatch(address indexed from ,address indexed to,uint date);

    event NewMessage(address indexed from ,address indexed to , string content,uint date);
    // Registering user 
    function register(string calldata _name,string calldata _city,Gender _gender,uint _age ,string calldata _url) external {
        require(users[msg.sender].age==0,"User is Already exist");
        require(!_isEmptyString(_name),"Please enter name ");
        require(!_isEmptyString(_city),"Please enter City ");
        require(_age>17,"You are not above 17");
        require(!_isEmptyString(_url),"Please enter Pic url ");
        users[msg.sender]=User(_name,_city,_gender,_age,_url);
        userIdsByCity[keccak256(abi.encodePacked(_city))][uint(_gender)].push(msg.sender);

    }
    // Get matchable users for user 
    function getMatchableUsers() view external userExist(msg.sender) returns(User[] memory){
        User storage user = users[msg.sender];
        uint oppositeGender= user.gender==Gender.MALE ? 1: 0;
        address[] storage userIds= userIdsByCity[keccak256(abi.encodePacked(user.city))][oppositeGender];
        uint matchableUsersCount;

        for(uint i=0;i<userIds.length;i++){
            address userId= userIds[i];
            if(swipes[msg.sender][userId]== SwipeStatus.UNKNOWN){
                matchableUsersCount++;
            }
        }

        User[] memory _users= new User[](matchableUsersCount);

        for(uint i=0;i<matchableUsersCount;i++){
            address userId= userIds[i];
            if(swipes[msg.sender][userId]== SwipeStatus.UNKNOWN){
                _users[i]=users[userId];
            }
        }
        

        return _users;


    }
    // Swipe and count of swipes for every user in definite time 
    function swipe(SwipeStatus _swipeStatus,address _userId) userExist(msg.sender) external userExist(_userId) {
        require(swipes[msg.sender][_userId] == SwipeStatus.UNKNOWN,"Cannot swipe same person twice ");

        SwipeSession storage swipeSession = swipeSessions[msg.sender];
        if(swipeSession.start + 86400 <= block.timestamp) {
            swipeSession.start = block.timestamp;
            swipeSession.count = 100;
        }

        require(swipeSession.count<=100,"You compelted todays swipe tasks");
        swipeSession.count++;
        if(_swipeStatus==SwipeStatus.DISLIKE){
            swipes[msg.sender][_userId]=_swipeStatus;
            return ;
        }
        swipes[msg.sender][_userId]=SwipeStatus.LIKE;

        if(swipes[_userId][msg.sender] == SwipeStatus.LIKE) {
            emit NewMatch(msg.sender, _userId, block.timestamp);
        }

    }
    //Send Message to left swipe user 
    function sendMessage(string calldata _content,address _to) userExist(msg.sender) external userExist(_to){
        require(swipes[msg.sender][_to]==SwipeStatus.LIKE && swipes[_to][msg.sender]==SwipeStatus.LIKE,"Both like each other");
        emit NewMessage(msg.sender, _to, _content, block.timestamp);
    }

    function _isEmptyString(string calldata _str) private pure returns(bool){
        bytes memory str= bytes(_str);
        return str.length==0;
    }
    //  Modifier For User Exist Or Not
    modifier userExist(address _addr){
        require(users[msg.sender].age!=0,"User is not exist");
        _;
    }

}