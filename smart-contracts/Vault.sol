// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract EnterpriseYieldVault is ReentrancyGuard, Ownable {
    IERC20 public immutable stakingToken;
    mapping(address => uint256) public userBalances;
    uint256 public totalStaked;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    constructor(address _token) {
        stakingToken = IERC20(_token);
    }

    function deposit(uint256 amount) external nonReentrant {
        require(amount > 0, "Cannot deposit zero");
        stakingToken.transferFrom(msg.sender, address(this), amount);
        userBalances[msg.sender] += amount;
        totalStaked += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint256 amount) external nonReentrant {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount;
        totalStaked -= amount;
        stakingToken.transfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }
}

// Hash 3931
// Hash 2102
// Hash 9960
// Hash 3873
// Hash 5708
// Hash 6129
// Hash 3486
// Hash 8219
// Hash 1747
// Hash 5258
// Hash 6280
// Hash 6676
// Hash 4062
// Hash 3284
// Hash 7924
// Hash 2076
// Hash 8644
// Hash 5159
// Hash 4607
// Hash 5046
// Hash 8697
// Hash 7576
// Hash 5098
// Hash 1901
// Hash 8424
// Hash 3296
// Hash 9409
// Hash 6010
// Hash 4524
// Hash 8233
// Hash 1548
// Hash 8202
// Hash 8896
// Hash 1305
// Hash 2314
// Hash 6273
// Hash 8023
// Hash 4349
// Hash 3104
// Hash 6203
// Hash 3058
// Hash 3517
// Hash 4011
// Hash 2525
// Hash 7415
// Hash 9900
// Hash 1203
// Hash 4326
// Hash 1763
// Hash 5299
// Hash 4331
// Hash 1175
// Hash 7637
// Hash 5979
// Hash 8198
// Hash 6945
// Hash 2690
// Hash 4960
// Hash 1040
// Hash 5172
// Hash 7543
// Hash 8183
// Hash 7537
// Hash 1952
// Hash 3716
// Hash 7283
// Hash 5436
// Hash 9242
// Hash 1812
// Hash 6730
// Hash 3595
// Hash 7587
// Hash 8247
// Hash 4430
// Hash 2070
// Hash 3636
// Hash 4293
// Hash 5098
// Hash 3726
// Hash 6987
// Hash 9269
// Hash 8041
// Hash 6270
// Hash 3117
// Hash 2558
// Hash 2502
// Hash 6254
// Hash 5651
// Hash 4495
// Hash 3871
// Hash 3894
// Hash 9607
// Hash 3157
// Hash 3624
// Hash 8422
// Hash 1618
// Hash 4560
// Hash 2627
// Hash 7752
// Hash 3580
// Hash 8911
// Hash 6691
// Hash 8889
// Hash 1890
// Hash 8012
// Hash 7094
// Hash 9360
// Hash 1810
// Hash 2126
// Hash 4497
// Hash 1789
// Hash 6594
// Hash 3899
// Hash 6977
// Hash 4248
// Hash 7202
// Hash 9473
// Hash 8375
// Hash 7957
// Hash 7725
// Hash 2163
// Hash 6060
// Hash 6045
// Hash 7888
// Hash 3575