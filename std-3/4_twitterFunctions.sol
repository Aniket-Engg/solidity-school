// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Twitter {
    // ----- START OF DO-NOT-EDIT ----- //
    struct Tweet {
        uint tweetId;
        address author;
        string content;
        uint createdAt;
    }

    struct User {
        address wallet;
        string name;
        uint[] userTweets;
    }

    mapping(address => User) public users;
    mapping(uint => Tweet) public tweets;

    uint256 public nextTweetId;
    uint256 public nextMessageId;
    // ----- END OF DO-NOT-EDIT ----- //

    // ----- START OF QUEST 1 ----- //
    function registerAccount(string calldata _name) external {
        bytes memory _nameByte = bytes(_name);
        require(_nameByte.length != 0, "Name cannot be an empty string");
        User storage X = users[msg.sender];
        X.name = _name;
        X.wallet = msg.sender;
    }

    function postTweet(string calldata _content) external accountExists(msg.sender) {
        Tweet storage X;
        X = tweets[nextTweetId];
        X.tweetId = nextTweetId;
        X.author = msg.sender;
        X.content = _content;
        X.createdAt = block.timestamp;

        User storage Y = users[msg.sender];
        Y.userTweets.push(nextTweetId);
        nextTweetId += 1;
    }

    function readTweets(address _user) view external returns(Tweet[] memory) {
        uint[] memory userTweetIds = users[_user].userTweets;
        Tweet[] memory userTweets = new Tweet[](userTweetIds.length);
        for (uint i = 0; i < userTweetIds.length; i++) {
            userTweets[i]=tweets[userTweetIds[i]];
        }
        return userTweets;
    }

    modifier accountExists(address _user) {
        User storage userIni = users[_user];
        bytes memory namaUserIni = bytes(userIni.name);
        require(namaUserIni.length!=0, "This wallet does not belong to any account.");
        _;
    }
}
