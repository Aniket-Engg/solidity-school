pragma solidity ^0.6.0;

contract Lifecycle {

    enum Stage{Infant, Toddler, Child, Teen, Adult, Old}

    /**
     * @dev Return stage of life
     * @param months Number of months
     */

    function getStage(uint months) public pure returns (Stage){
        if(months > 0 && months <= 12)
            return Stage.Infant;
        else if(months > 12 && months <= 24)
            return Stage.Toddler;
        else if(months > 24 && months <= 155)
            return Stage.Child;
        else if(months > 156 && months <= 228)
            return Stage.Teen;
        else if(months > 228 && months <= 720)
            return Stage.Adult;
        else
            return Stage.Old;
    }
}