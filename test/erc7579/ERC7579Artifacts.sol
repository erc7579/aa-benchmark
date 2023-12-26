interface ERC7579Factory {
    function createAccount(bytes32 salt, bytes calldata initCode) external returns (address);
    function getAddress(bytes32 salt, bytes calldata initCode) external view returns (address);
}

interface ERC7579Account {
    function execute(address _to, uint256 _value, bytes calldata _data) external returns (bytes memory result);
    function initializeAccount(bytes calldata data) external;
}

interface IBootstrap {
    function singleInitMSA(address validator, bytes calldata data) external;
}

bytes constant ERC7579_FACTORY_CODE =
    hex"60806040526004361061003f5760003560e01c806356c717f5146100445780635c60da1b14610077578063d959fd0e146100c3578063f8a59370146100e3575b600080fd5b34801561005057600080fd5b5061006461005f3660046103b1565b6100f6565b6040519081526020015b60405180910390f35b34801561008357600080fd5b506100ab7f000000000000000000000000f62849f9a0b5bf2913b396098f7c7019b51a820a81565b6040516001600160a01b03909116815260200161006e565b3480156100cf57600080fd5b506100ab6100de3660046103b1565b61012c565b6100ab6100f13660046103b1565b610170565b600083838360405160200161010d9392919061042d565b6040516020818303038152906040528051906020012090509392505050565b60008061013a8585856100f6565b90506101677f000000000000000000000000f62849f9a0b5bf2913b396098f7c7019b51a820a8230610222565b95945050505050565b60008061017e8585856100f6565b90506000806101ae347f000000000000000000000000f62849f9a0b5bf2913b396098f7c7019b51a820a856102ab565b915091508161021857604051634b6a141960e01b81526001600160a01b03821690634b6a1419906101e59089908990600401610447565b600060405180830381600087803b1580156101ff57600080fd5b505af1158015610213573d6000803e3d6000fd5b505050505b9695505050505050565b60008061029e85604080517fcc3735a920a3ca505d382bbc545af43d6000803e6038573d6000fd5b3d6000f360609081527f5155f3363d3d373d3d363d7f360894a13ba1a3210667c828492db98dca3e20768352616009602052601e9390935268603d3d8160223d3973600a52605f6021209152600090915290565b905061016781858561038f565b6000806040517fcc3735a920a3ca505d382bbc545af43d6000803e6038573d6000fd5b3d6000f36060527f5155f3363d3d373d3d363d7f360894a13ba1a3210667c828492db98dca3e207660405261600960205284601e5268603d3d8160223d3973600a52605f60212060358201523060581b815260ff8153836015820152605581209150813b6103575783605f602188f59150816103525763301164256000526004601cfd5b61037d565b60019250851561037d5760003860003889865af161037d5763b12d13eb6000526004601cfd5b80604052506000606052935093915050565b600060ff60005350603592835260601b60015260155260556000908120915290565b6000806000604084860312156103c657600080fd5b83359250602084013567ffffffffffffffff808211156103e557600080fd5b818601915086601f8301126103f957600080fd5b81358181111561040857600080fd5b87602082850101111561041a57600080fd5b6020830194508093505050509250925092565b838152818360208301376000910160200190815292915050565b60208152816020820152818360408301376000818301604090810191909152601f909201601f1916010191905056fea26469706673582212206db0828fb098e31332d14d7ce506c9f02babe82a4a5394473af19ac8856cd8ea64736f6c63430008170033";

address constant ERC7579_FACTORY_ADDRESS = 0x5991A2dF15A8F6A256D3Ec51E99254Cd3fb576A9;

address payable constant ERC7579_ACCOUNT_ADDRESS = payable(address(0xF62849F9A0B5Bf2913b396098F7c7019b51A820a));
bytes constant ERC7579_ACCOUNT_CODE =
    hex"6080604052600436106101355760003560e01c806375f25167116100ab578063b61d27f61161006f578063b61d27f61461041f578063b68df16d14610432578063d8bf2fca14610445578063d8e2fa1a14610465578063ea5f61d014610485578063f32a3661146104a557610135565b806375f251671461036f578063855713681461038f578063899764e6146103bd578063b0d691fe146103d0578063b31d43be146103ff57610135565b806348135bf8116100fd57806348135bf81461028e5780634899c131146102ae5780634b6a1419146102ce578063572046a8146102ee5780636613e1ed1461033c57806370eac7c91461034f57610135565b806301ffc9a7146101bd578063053c6d98146101f25780631626ba7e1461021457806334fcd5be1461024d5780633a871cdd1461026d575b34801561014157600080fd5b507f9c63439e8db454cdf22fd3d05d35ed5ea662f6ebbc519905ab830d38464df09480548061016c57005b60408051368101909152366000823760408051601481019091523360601b9052600080366014018382865af19150506101ab3d60408051918201905290565b3d6000823e816101b9573d81fd5b3d81f35b3480156101c957600080fd5b506101dd6101d8366004611637565b6104c5565b60405190151581526020015b60405180910390f35b3480156101fe57600080fd5b5061021261020d3660046116ba565b610516565b005b34801561022057600080fd5b5061023461022f36600461170e565b6105fe565b6040516001600160e01b031990911681526020016101e9565b61026061025b366004611740565b610613565b6040516101e991906117fa565b61028061027b36600461185e565b610664565b6040519081526020016101e9565b34801561029a57600080fd5b506102126102a93660046116ba565b61073a565b6102c16102bc3660046118b1565b610788565b6040516101e9919061190c565b3480156102da57600080fd5b506102126102e936600461191f565b6107d8565b3480156102fa57600080fd5b506101dd610309366004611960565b7f9c63439e8db454cdf22fd3d05d35ed5ea662f6ebbc519905ab830d38464df094546001600160a01b0390811691161490565b6102c161034a366004611a1f565b61085f565b34801561035b57600080fd5b506101dd61036a366004611960565b6108b2565b34801561037b57600080fd5b506101dd61038a366004611960565b6108cd565b34801561039b57600080fd5b506103af6103aa366004611a6e565b6108e8565b6040516101e9929190611a9a565b6102606103cb366004611740565b610913565b3480156103dc57600080fd5b50604051735ff137d4b0fdcd49dca30c7cf57e578a026d278981526020016101e9565b34801561040b57600080fd5b5061021261041a3660046116ba565b610957565b6102c161042d3660046118b1565b610a98565b6102c16104403660046116ba565b610aed565b34801561045157600080fd5b506102126104603660046116ba565b610b38565b34801561047157600080fd5b506102126104803660046116ba565b610c0f565b34801561049157600080fd5b506103af6104a0366004611a6e565b610cb7565b3480156104b157600080fd5b506102126104c03660046116ba565b610cd5565b600063b495ebe760e01b6001600160e01b03198316016104e757506001919050565b63b495ebe760e01b6001600160e01b031983160161050757506001919050565b61051082610d1e565b92915050565b33735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061053757503330145b61055457604051635629665f60e11b815260040160405180910390fd5b6040516306d61fe760e41b81526001600160a01b03841690636d61fe70906105829085908590600401611b26565b600060405180830381600087803b15801561059c57600080fd5b505af11580156105b0573d6000803e3d6000fd5b505050506105bd83610e28565b6040516001600160a01b03841681527fb40551e04c79c5ed1bda94430715b4fbd0748b35cc548419af988aeb0679915f9060200160405180910390a1505050565b600061060b848484610e80565b949350505050565b606033735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061063657503330145b61065357604051635629665f60e11b815260040160405180910390fd5b61065d8383610f4d565b9392505050565b6000816020850135606081901c9061067b826108cd565b6106a857604051635c93ff2f60e11b81526001600160a01b03831660048201526024015b60405180910390fd5b60405160016206524760e11b031981526001600160a01b0383169063fff35b72906106d9908a908a90600401611b7f565b6020604051808303816000875af11580156106f8573d6000803e3d6000fd5b505050506040513d601f19601f8201168201806040525081019061071c9190611c98565b9350505080156107325760003860003884335af1505b509392505050565b33735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061075b57503330145b61077857604051635629665f60e11b815260040160405180910390fd5b610783838383611025565b505050565b6060600080516020611e128339815191526107a381336110eb565b6107c257604051635c93ff2f60e11b815233600482015260240161069f565b6107ce86868686611125565b9695505050505050565b6001600052600080516020611e328339815191526020527f643a0023cfcea778bfa72ce77c7e63d8b140a6542bf3f6edb59a96ccce28ad86546001600160a01b03161561082457600080fd5b61082c61115b565b61085b61083d601460008486611cb1565b61084691611cdb565b60601c6108568360148187611cb1565b611025565b5050565b6060600080516020611e1283398151915261087a81336110eb565b61089957604051635c93ff2f60e11b815233600482015260240161069f565b604051634851657960e11b815260040160405180910390fd5b6000600080516020611e1283398151915261065d81846110eb565b6000600080516020611e3283398151915261065d81846110eb565b60606000600080516020611e3283398151915261090681868661118d565b92509250505b9250929050565b6060600080516020611e1283398151915261092e81336110eb565b61094d57604051635c93ff2f60e11b815233600482015260240161069f565b61060b8484610f4d565b33735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061097857503330145b61099557604051635629665f60e11b815260040160405180910390fd5b600080516020611e328339815191526000806109b385850186611a1f565b604051638a91b0e360e01b815291935091506001600160a01b03871690638a91b0e3906109e490849060040161190c565b600060405180830381600087803b1580156109fe57600080fd5b505af1158015610a12573d6000803e3d6000fd5b5050505060016001600160a01b0316826001600160a01b031603610a4957604051632c46098f60e21b815260040160405180910390fd5b610a54838388611329565b6040516001600160a01b03871681527f36a773811aa40c53a642b0596c94174b588d0d1b2b9b6fa6e31c3c30d686163f9060200160405180910390a1505050505050565b606033735ff137d4b0fdcd49dca30c7cf57e578a026d27891480610abb57503330145b610ad857604051635629665f60e11b815260040160405180910390fd5b610ae485858585611125565b95945050505050565b606033735ff137d4b0fdcd49dca30c7cf57e578a026d27891480610b1057503330145b610b2d57604051635629665f60e11b815260040160405180910390fd5b61060b8484846113fe565b33735ff137d4b0fdcd49dca30c7cf57e578a026d27891480610b5957503330145b610b7657604051635629665f60e11b815260040160405180910390fd5b600080610b8583850185611a1f565b604051638a91b0e360e01b815291935091506001600160a01b03861690638a91b0e390610bb690849060040161190c565b600060405180830381600087803b158015610bd057600080fd5b505af1158015610be4573d6000803e3d6000fd5b505050506000610bff600080516020611e3283398151915290565b6001019050610a54818488611329565b33735ff137d4b0fdcd49dca30c7cf57e578a026d27891480610c3057503330145b610c4d57604051635629665f60e11b815260040160405180910390fd5b604051638a91b0e360e01b81526001600160a01b03841690638a91b0e390610c7b9085908590600401611b26565b600060405180830381600087803b158015610c9557600080fd5b505af1158015610ca9573d6000803e3d6000fd5b505050506107836000610e28565b60606000600080516020611e1283398151915261090681868661118d565b33735ff137d4b0fdcd49dca30c7cf57e578a026d27891480610cf657503330145b610d1357604051635629665f60e11b815260040160405180910390fd5b610783838383611432565b600063a082b99760e01b6001600160e01b0319831601610d4057506001919050565b63fe00365960e01b6001600160e01b0319831601610d6057506001919050565b630cd5c99f60e01b6001600160e01b0319831601610d8057506001919050565b6313a0681b60e11b6001600160e01b0319831601610da057506001919050565b638f15383760e01b6001600160e01b0319831601610dc057506001919050565b6316fd948160e31b6001600160e01b0319831601610de057506001919050565b6326715e2160e11b6001600160e01b0319831601610e0057506001919050565b638a0dae9960e01b6001600160e01b0319831601610e2057506001919050565b506000919050565b306001600160a01b03821603610e5c57604051634726455360e11b81526001600160a01b038216600482015260240161069f565b7f9c63439e8db454cdf22fd3d05d35ed5ea662f6ebbc519905ab830d38464df09455565b600080610e906014828587611cb1565b610e9991611cdb565b60601c9050610ea7816108cd565b610ecf57604051635c93ff2f60e11b81526001600160a01b038216600482015260240161069f565b6001600160a01b03811663f551e2ee3387610eed876014818b611cb1565b6040518563ffffffff1660e01b8152600401610f0c9493929190611d0e565b602060405180830381865afa158015610f29573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250810190610ae49190611d36565b606081806001600160401b03811115610f6857610f6861197d565b604051908082528060200260200182016040528015610f9b57816020015b6060815260200190600190039081610f865790505b50915060005b8181101561101d5736858583818110610fbc57610fbc611d53565b9050602002810190610fce9190611d69565b9050610ff7610fe06020830183611960565b6020830135610ff26040850185611d89565b611125565b84838151811061100957611009611d53565b602090810291909101015250600101610fa1565b505092915050565b6040516306d61fe760e41b8152600080516020611e32833981519152906001600160a01b03851690636d61fe70906110639086908690600401611b26565b600060405180830381600087803b15801561107d57600080fd5b505af1158015611091573d6000803e3d6000fd5b505050506110a884826114ee90919063ffffffff16565b6040516001600160a01b03851681527f2d91d9c220de5aa44766800ef0fe09b060fdd021b142ae4d21ce6a87b066d170906020015b60405180910390a150505050565b600060016001600160a01b0383161480159061065d5750506001600160a01b03908116600090815260209290925260409091205416151590565b60405181838237600038838387895af1611142573d6000823e3d81fd5b3d8152602081013d6000823e3d01604052949350505050565b600080516020611e32833981519152611181600080516020611e128339815191526115c4565b61118a816115c4565b50565b606060006001600160a01b0384166001148015906111b057506111b085856110eb565b156111d957604051637c84ecfb60e01b81526001600160a01b038516600482015260240161069f565b826000036111fa5760405163f725081760e01b815260040160405180910390fd5b826001600160401b038111156112125761121261197d565b60405190808252806020026020018201604052801561123b578160200160208202803683370190505b506001600160a01b03808616600090815260208890526040812054929450911691505b6001600160a01b0382161580159061128057506001600160a01b038216600114155b801561128b57508381105b156112e557818382815181106112a3576112a3611d53565b6001600160a01b0392831660209182029290920181019190915292811660009081529287905260409092205490911690806112dd81611de5565b91505061125e565b6001600160a01b03821660011461131d5782611302600183611dfe565b8151811061131257611312611d53565b602002602001015191505b80835250935093915050565b6001600160a01b038116158061134857506001600160a01b0381166001145b1561137157604051637c84ecfb60e01b81526001600160a01b038316600482015260240161069f565b6001600160a01b038281166000908152602085905260409020548116908216146113b957604051637c84ecfb60e01b81526001600160a01b038216600482015260240161069f565b6001600160a01b0390811660008181526020949094526040808520805494841686529085208054949093166001600160a01b0319948516179092559092528154169055565b604051818382376000388383875af461141a573d6000823e3d81fd5b3d8152602081013d6000823e3d016040529392505050565b6040516306d61fe760e41b8152600080516020611e12833981519152906001600160a01b03851690636d61fe70906114709086908690600401611b26565b600060405180830381600087803b15801561148a57600080fd5b505af115801561149e573d6000803e3d6000fd5b505050506114b584826114ee90919063ffffffff16565b6040516001600160a01b03851681527fa94a505d6d06d2648d04f969a277c083b36aacc22be6fc3ab6afbadee18b6eb9906020016110dd565b6001600160a01b038116158061150d57506001600160a01b0381166001145b1561153657604051637c84ecfb60e01b81526001600160a01b038216600482015260240161069f565b6001600160a01b03818116600090815260208490526040902054161561157a57604051631034f46960e21b81526001600160a01b038216600482015260240161069f565b60016000818152602093909352604080842080546001600160a01b039485168087529286208054959091166001600160a01b03199586161790559190935280549091169091179055565b60016000908152602082905260409020546001600160a01b0316156115fc576040516329e42f3360e11b815260040160405180910390fd5b60016000818152602092909252604090912080546001600160a01b0319169091179055565b6001600160e01b03198116811461118a57600080fd5b60006020828403121561164957600080fd5b813561065d81611621565b6001600160a01b038116811461118a57600080fd5b803561167481611654565b919050565b60008083601f84011261168b57600080fd5b5081356001600160401b038111156116a257600080fd5b60208301915083602082850101111561090c57600080fd5b6000806000604084860312156116cf57600080fd5b83356116da81611654565b925060208401356001600160401b038111156116f557600080fd5b61170186828701611679565b9497909650939450505050565b60008060006040848603121561172357600080fd5b8335925060208401356001600160401b038111156116f557600080fd5b6000806020838503121561175357600080fd5b82356001600160401b038082111561176a57600080fd5b818501915085601f83011261177e57600080fd5b81358181111561178d57600080fd5b8660208260051b85010111156117a257600080fd5b60209290920196919550909350505050565b6000815180845260005b818110156117da576020818501810151868301820152016117be565b506000602082860101526020601f19601f83011685010191505092915050565b600060208083016020845280855180835260408601915060408160051b87010192506020870160005b8281101561185157603f1988860301845261183f8583516117b4565b94509285019290850190600101611823565b5092979650505050505050565b60008060006060848603121561187357600080fd5b83356001600160401b0381111561188957600080fd5b8401610160818703121561189c57600080fd5b95602085013595506040909401359392505050565b600080600080606085870312156118c757600080fd5b84356118d281611654565b93506020850135925060408501356001600160401b038111156118f457600080fd5b61190087828801611679565b95989497509550505050565b60208152600061065d60208301846117b4565b6000806020838503121561193257600080fd5b82356001600160401b0381111561194857600080fd5b61195485828601611679565b90969095509350505050565b60006020828403121561197257600080fd5b813561065d81611654565b634e487b7160e01b600052604160045260246000fd5b600082601f8301126119a457600080fd5b81356001600160401b03808211156119be576119be61197d565b604051601f8301601f19908116603f011681019082821181831017156119e6576119e661197d565b816040528381528660208588010111156119ff57600080fd5b836020870160208301376000602085830101528094505050505092915050565b60008060408385031215611a3257600080fd5b8235611a3d81611654565b915060208301356001600160401b03811115611a5857600080fd5b611a6485828601611993565b9150509250929050565b60008060408385031215611a8157600080fd5b8235611a8c81611654565b946020939093013593505050565b604080825283519082018190526000906020906060840190828701845b82811015611adc5781516001600160a01b031684529284019290840190600101611ab7565b5050506001600160a01b039490941660209390930192909252509092915050565b81835281816020850137506000828201602090810191909152601f909101601f19169091010190565b60208152600061060b602083018486611afd565b6000808335601e19843603018112611b5157600080fd5b83016020810192503590506001600160401b03811115611b7057600080fd5b80360382131561090c57600080fd5b60408152611ba060408201611b9385611669565b6001600160a01b03169052565b602083013560608201526000611bb96040850185611b3a565b610160806080860152611bd16101a086018385611afd565b9250611be06060880188611b3a565b9250603f19808786030160a0880152611bfa858584611afd565b9450608089013560c088015260a089013560e0880152610100935060c089013584880152610120915060e089013582880152610140848a013581890152611c43838b018b611b3a565b95509250818887030184890152611c5b868685611afd565b9550611c69818b018b611b3a565b955093505080878603016101808801525050611c86838383611afd565b93505050508260208301529392505050565b600060208284031215611caa57600080fd5b5051919050565b60008085851115611cc157600080fd5b83861115611cce57600080fd5b5050820193919092039150565b6bffffffffffffffffffffffff19813581811691601485101561101d5760149490940360031b84901b1690921692915050565b60018060a01b03851681528360208201526060604082015260006107ce606083018486611afd565b600060208284031215611d4857600080fd5b815161065d81611621565b634e487b7160e01b600052603260045260246000fd5b60008235605e19833603018112611d7f57600080fd5b9190910192915050565b6000808335601e19843603018112611da057600080fd5b8301803591506001600160401b03821115611dba57600080fd5b60200191503681900382131561090c57600080fd5b634e487b7160e01b600052601160045260246000fd5b600060018201611df757611df7611dcf565b5060010190565b8181038181111561051057610510611dcf56fef88ce1fdb7fb1cbd3282e49729100fa3f2d6ee9f797961fe4fb1871cea89ea03f88ce1fdb7fb1cbd3282e49729100fa3f2d6ee9f797961fe4fb1871cea89ea02a2646970667358221220ab663c0c2690cdc4cedccda36537f569e560262d261f254b2937691cbe971fec64736f6c63430008170033";

address constant ECDSA_VALIDATOR_ADDRESS = 0xd9AB5096a832b9ce79914329DAEE236f8Eea0390;

bytes constant ECDSA_VALIDATOR_CODE =
    hex"608060405234801561001057600080fd5b50600436106100625760003560e01c8063022914a71461006757806313af4035146100ad5780636d61fe70146100ec5780638a91b0e3146100ff578063f551e2ee1461012e578063fff35b721461015f575b600080fd5b61009061007536600461031f565b6000602081905290815260409020546001600160a01b031681565b6040516001600160a01b0390911681526020015b60405180910390f35b6100ea6100bb36600461031f565b33600090815260208190526040902080546001600160a01b0319166001600160a01b0392909216919091179055565b005b6100ea6100fa36600461038a565b610180565b6100ea61010d36600461038a565b505033600090815260208190526040902080546001600160a01b0319169055565b61014661013c3660046103cc565b6000949350505050565b6040516001600160e01b031990911681526020016100a4565b61017261016d366004610426565b6101b8565b6040519081526020016100a4565b600061018c8284610471565b33600090815260208190526040902080546001600160a01b03191660609290921c919091179055505050565b6000806101ea836020527b19457468657265756d205369676e6564204d6573736167653a0a3332600052603c60042090565b905061023a6101fd6101408601866104a6565b8080601f01602080910402602001604051908101604052809392919081815260200183838082843760009201919091525085939250506102729050565b336000908152602081905260409020546001600160a01b0390811691161461026657600191505061026c565b60009150505b92915050565b60405160019083600052602083015160405260408351036102ae57604083015160ff81901c601b016020526001600160ff1b03166060526102d4565b60418351036102cf57606083015160001a60205260408301516060526102d4565b600091505b6020600160806000855afa5191503d6102f557638baa579f6000526004601cfd5b600060605260405292915050565b80356001600160a01b038116811461031a57600080fd5b919050565b60006020828403121561033157600080fd5b61033a82610303565b9392505050565b60008083601f84011261035357600080fd5b50813567ffffffffffffffff81111561036b57600080fd5b60208301915083602082850101111561038357600080fd5b9250929050565b6000806020838503121561039d57600080fd5b823567ffffffffffffffff8111156103b457600080fd5b6103c085828601610341565b90969095509350505050565b600080600080606085870312156103e257600080fd5b6103eb85610303565b935060208501359250604085013567ffffffffffffffff81111561040e57600080fd5b61041a87828801610341565b95989497509550505050565b6000806040838503121561043957600080fd5b823567ffffffffffffffff81111561045057600080fd5b8301610160818603121561046357600080fd5b946020939093013593505050565b6bffffffffffffffffffffffff19813581811691601485101561049e5780818660140360031b1b83161692505b505092915050565b6000808335601e198436030181126104bd57600080fd5b83018035915067ffffffffffffffff8211156104d857600080fd5b60200191503681900382131561038357600080fdfea26469706673582212202b7ffd322c80222ab1df6897321573ec6a4a1d34cd32f10ada9ad48b1ce0bcb864736f6c63430008170033";

// bytes constant ECDSA_VALIDATOR_CODE =
//     hex"608060405234801561001057600080fd5b506004361061004c5760003560e01c80636d61fe70146100515780638a91b0e314610051578063f551e2ee14610065578063fff35b721461009b575b600080fd5b61006361005f366004610138565b5050565b005b61007d61007336600461017a565b6000949350505050565b6040516001600160e01b031990911681526020015b60405180910390f35b6100ae6100a93660046101e2565b6100bc565b604051908152602001610092565b6000806100cc606085018561022d565b6100db91600491600091610274565b6100e49161029e565b506000949350505050565b60008083601f84011261010157600080fd5b50813567ffffffffffffffff81111561011957600080fd5b60208301915083602082850101111561013157600080fd5b9250929050565b6000806020838503121561014b57600080fd5b823567ffffffffffffffff81111561016257600080fd5b61016e858286016100ef565b90969095509350505050565b6000806000806060858703121561019057600080fd5b84356001600160a01b03811681146101a757600080fd5b935060208501359250604085013567ffffffffffffffff8111156101ca57600080fd5b6101d6878288016100ef565b95989497509550505050565b600080604083850312156101f557600080fd5b823567ffffffffffffffff81111561020c57600080fd5b8301610160818603121561021f57600080fd5b946020939093013593505050565b6000808335601e1984360301811261024457600080fd5b83018035915067ffffffffffffffff82111561025f57600080fd5b60200191503681900382131561013157600080fd5b6000808585111561028457600080fd5b8386111561029157600080fd5b5050820193919092039150565b6001600160e01b031981358181169160048510156102c65780818660040360031b1b83161692505b50509291505056fea2646970667358221220c8894fe3ea88c7e0d04197ccd9e7dfa4f52f7f45148fc80d6fa48965b2dbbc4e64736f6c63430008170033";

address constant BOOTSTRAP_ADDRESS = 0x5615dEB798BB3e4dfA0139DFA1B3d433cC23b72D;

bytes constant BOOTSTRAP_CODE =
    hex"608060405234801561001057600080fd5b506004361061010b5760003560e01c806370eac7c9116100a2578063bd5a01da11610071578063bd5a01da146102bf578063d8bf2fca146102df578063d8e2fa1a146102f2578063f32a366114610305578063fbef7027146103185761010b565b806370eac7c91461026457806375f2516714610277578063b0d691fe1461028a578063b31d43be146102ac5761010b565b806348135bf8116100de57806348135bf8146101ea578063572046a8146101fd57806359934cfe1461023e5780636b0d5cc4146102515761010b565b806301ffc9a714610186578063053c6d98146101af5780630ff2fe98146101c45780632ae01827146101d7575b7f9c63439e8db454cdf22fd3d05d35ed5ea662f6ebbc519905ab830d38464df09480548061013557005b60408051368101909152366000823760408051601481019091523360601b9052600080366014018382865af19150506101743d60408051918201905290565b3d6000823e81610182573d81fd5b3d81f35b61019a6101943660046110db565b50600090565b60405190151581526020015b60405180910390f35b6101c26101bd366004611163565b61032b565b005b6101c26101d2366004611215565b610414565b61019a6101e53660046112cc565b6105d7565b6101c26101f8366004611163565b61061b565b61019a61020b3660046112cc565b7f9c63439e8db454cdf22fd3d05d35ed5ea662f6ebbc519905ab830d38464df094546001600160a01b0390811691161490565b6101c261024c366004611163565b610669565b6101c261025f366004611163565b6106b2565b61019a6102723660046112cc565b6106ba565b61019a6102853660046112cc565b6106ee565b604051735ff137d4b0fdcd49dca30c7cf57e578a026d278981526020016101a6565b6101c26102ba366004611163565b610709565b6102d26102cd366004611215565b61084a565b6040516101a6919061132f565b6101c26102ed366004611163565b6108d0565b6101c2610300366004611163565b6109a7565b6101c2610313366004611163565b610a4f565b6101c2610326366004611163565b610a98565b33735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061034c57503330145b61036957604051635629665f60e11b815260040160405180910390fd5b6040516306d61fe760e41b81526001600160a01b03841690636d61fe7090610397908590859060040161136b565b600060405180830381600087803b1580156103b157600080fd5b505af11580156103c5573d6000803e3d6000fd5b505050506103d283610ae1565b6040516001600160a01b03841681527fb40551e04c79c5ed1bda94430715b4fbd0748b35cc548419af988aeb0679915f906020015b60405180910390a1505050565b61041c610b3e565b60005b8581101561049b5761049387878381811061043c5761043c611387565b905060200281019061044e919061139d565b61045c9060208101906112cc565b88888481811061046e5761046e611387565b9050602002810190610480919061139d565b61048e9060208101906113bd565b610b82565b60010161041f565b5060005b8381101561055d5760008585838181106104bb576104bb611387565b90506020028101906104cd919061139d565b6104db9060208101906112cc565b6001600160a01b031614610555576105558585838181106104fe576104fe611387565b9050602002810190610510919061139d565b61051e9060208101906112cc565b86868481811061053057610530611387565b9050602002810190610542919061139d565b6105509060208101906113bd565b610c48565b60010161049f565b50600061056d60208401846112cc565b6001600160a01b03161461059d5761059d61058b60208401846112cc565b61059860208501856113bd565b610d16565b60006105ac60208301836112cc565b6001600160a01b0316146105cf576105cf6105ca60208301836112cc565b610ae1565b505050505050565b6000816001600160a01b031661060b7f36e05829dd1b9a4411d96a3549582172d7f071c1c0db5c573fcf94eb284316085490565b6001600160a01b03161492915050565b33735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061063c57503330145b61065957604051635629665f60e11b815260040160405180910390fd5b610664838383610b82565b505050565b33735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061068a57503330145b6106a757604051635629665f60e11b815260040160405180910390fd5b610664838383610d16565b610659610b3e565b60007ff88ce1fdb7fb1cbd3282e49729100fa3f2d6ee9f797961fe4fb1871cea89ea036106e78184610dd7565b9392505050565b60006000805160206116468339815191526106e78184610dd7565b33735ff137d4b0fdcd49dca30c7cf57e578a026d2789148061072a57503330145b61074757604051635629665f60e11b815260040160405180910390fd5b6000805160206116468339815191526000806107658585018661141a565b604051638a91b0e360e01b815291935091506001600160a01b03871690638a91b0e39061079690849060040161132f565b600060405180830381600087803b1580156107b057600080fd5b505af11580156107c4573d6000803e3d6000fd5b5050505060016001600160a01b0316826001600160a01b0316036107fb57604051632c46098f60e21b815260040160405180910390fd5b610806838388610e11565b6040516001600160a01b03871681527f36a773811aa40c53a642b0596c94174b588d0d1b2b9b6fa6e31c3c30d686163f9060200160405180910390a1505050505050565b606030306001600160a01b0316630ff2fe98898989898989604051602401610877969594939291906115c5565b604051602081830303815290604052915060e01b6020820180516001600160e01b0383818316178352505050506040516020016108b5929190611621565b60405160208183030381529060405290509695505050505050565b33735ff137d4b0fdcd49dca30c7cf57e578a026d278914806108f157503330145b61090e57604051635629665f60e11b815260040160405180910390fd5b60008061091d8385018561141a565b604051638a91b0e360e01b815291935091506001600160a01b03861690638a91b0e39061094e90849060040161132f565b600060405180830381600087803b15801561096857600080fd5b505af115801561097c573d6000803e3d6000fd5b50505050600061099760008051602061164683398151915290565b6001019050610806818488610e11565b33735ff137d4b0fdcd49dca30c7cf57e578a026d278914806109c857503330145b6109e557604051635629665f60e11b815260040160405180910390fd5b604051638a91b0e360e01b81526001600160a01b03841690638a91b0e390610a13908590859060040161136b565b600060405180830381600087803b158015610a2d57600080fd5b505af1158015610a41573d6000803e3d6000fd5b505050506106646000610ae1565b33735ff137d4b0fdcd49dca30c7cf57e578a026d27891480610a7057503330145b610a8d57604051635629665f60e11b815260040160405180910390fd5b610664838383610c48565b33735ff137d4b0fdcd49dca30c7cf57e578a026d27891480610ab957503330145b610ad657604051635629665f60e11b815260040160405180910390fd5b610664838383610ee6565b306001600160a01b03821603610b1a57604051634726455360e11b81526001600160a01b03821660048201526024015b60405180910390fd5b7f9c63439e8db454cdf22fd3d05d35ed5ea662f6ebbc519905ab830d38464df09455565b600080516020611646833981519152610b767ff88ce1fdb7fb1cbd3282e49729100fa3f2d6ee9f797961fe4fb1871cea89ea03610fa8565b610b7f81610fa8565b50565b6040516306d61fe760e41b8152600080516020611646833981519152906001600160a01b03851690636d61fe7090610bc0908690869060040161136b565b600060405180830381600087803b158015610bda57600080fd5b505af1158015610bee573d6000803e3d6000fd5b50505050610c05848261100590919063ffffffff16565b6040516001600160a01b03851681527f2d91d9c220de5aa44766800ef0fe09b060fdd021b142ae4d21ce6a87b066d170906020015b60405180910390a150505050565b6040516306d61fe760e41b81527ff88ce1fdb7fb1cbd3282e49729100fa3f2d6ee9f797961fe4fb1871cea89ea03906001600160a01b03851690636d61fe7090610c98908690869060040161136b565b600060405180830381600087803b158015610cb257600080fd5b505af1158015610cc6573d6000803e3d6000fd5b50505050610cdd848261100590919063ffffffff16565b6040516001600160a01b03851681527fa94a505d6d06d2648d04f969a277c083b36aacc22be6fc3ab6afbadee18b6eb990602001610c3a565b6040516306d61fe760e41b81526001600160a01b03841690636d61fe7090610d44908590859060040161136b565b600060405180830381600087803b158015610d5e57600080fd5b505af1158015610d72573d6000803e3d6000fd5b50505050610d9e837f36e05829dd1b9a4411d96a3549582172d7f071c1c0db5c573fcf94eb2843160855565b6040516001600160a01b03841681527f3a856255c5e96932045b28950075b0283c5ac4bc963209e8b2cfb002d24da8f890602001610407565b600060016001600160a01b038316148015906106e75750506001600160a01b03908116600090815260209290925260409091205416151590565b6001600160a01b0381161580610e3057506001600160a01b0381166001145b15610e5957604051637c84ecfb60e01b81526001600160a01b0383166004820152602401610b11565b6001600160a01b03828116600090815260208590526040902054811690821614610ea157604051637c84ecfb60e01b81526001600160a01b0382166004820152602401610b11565b6001600160a01b0390811660008181526020949094526040808520805494841686529085208054949093166001600160a01b0319948516179092559092528154169055565b604051638a91b0e360e01b81526001600160a01b03841690638a91b0e390610f14908590859060040161136b565b600060405180830381600087803b158015610f2e57600080fd5b505af1158015610f42573d6000803e3d6000fd5b50505050610f6f60007f36e05829dd1b9a4411d96a3549582172d7f071c1c0db5c573fcf94eb2843160855565b6040516001600160a01b03841681527f625311a3e4dadff718f8d52e312c83fea5e767cf0d8780a7d21c9cbfa093a8ab90602001610407565b60016000908152602082905260409020546001600160a01b031615610fe0576040516329e42f3360e11b815260040160405180910390fd5b60016000818152602092909252604090912080546001600160a01b0319169091179055565b6001600160a01b038116158061102457506001600160a01b0381166001145b1561104d57604051637c84ecfb60e01b81526001600160a01b0382166004820152602401610b11565b6001600160a01b03818116600090815260208490526040902054161561109157604051631034f46960e21b81526001600160a01b0382166004820152602401610b11565b60016000818152602093909352604080842080546001600160a01b039485168087529286208054959091166001600160a01b03199586161790559190935280549091169091179055565b6000602082840312156110ed57600080fd5b81356001600160e01b0319811681146106e757600080fd5b6001600160a01b0381168114610b7f57600080fd5b60008083601f84011261112c57600080fd5b50813567ffffffffffffffff81111561114457600080fd5b60208301915083602082850101111561115c57600080fd5b9250929050565b60008060006040848603121561117857600080fd5b833561118381611105565b9250602084013567ffffffffffffffff81111561119f57600080fd5b6111ab8682870161111a565b9497909650939450505050565b60008083601f8401126111ca57600080fd5b50813567ffffffffffffffff8111156111e257600080fd5b6020830191508360208260051b850101111561115c57600080fd5b60006040828403121561120f57600080fd5b50919050565b6000806000806000806080878903121561122e57600080fd5b863567ffffffffffffffff8082111561124657600080fd5b6112528a838b016111b8565b9098509650602089013591508082111561126b57600080fd5b6112778a838b016111b8565b9096509450604089013591508082111561129057600080fd5b61129c8a838b016111fd565b935060608901359150808211156112b257600080fd5b506112bf89828a016111fd565b9150509295509295509295565b6000602082840312156112de57600080fd5b81356106e781611105565b6000815180845260005b8181101561130f576020818501810151868301820152016112f3565b506000602082860101526020601f19601f83011685010191505092915050565b6020815260006106e760208301846112e9565b81835281816020850137506000828201602090810191909152601f909101601f19169091010190565b60208152600061137f602083018486611342565b949350505050565b634e487b7160e01b600052603260045260246000fd5b60008235603e198336030181126113b357600080fd5b9190910192915050565b6000808335601e198436030181126113d457600080fd5b83018035915067ffffffffffffffff8211156113ef57600080fd5b60200191503681900382131561115c57600080fd5b634e487b7160e01b600052604160045260246000fd5b6000806040838503121561142d57600080fd5b823561143881611105565b9150602083013567ffffffffffffffff8082111561145557600080fd5b818501915085601f83011261146957600080fd5b81358181111561147b5761147b611404565b604051601f8201601f19908116603f011681019083821181831017156114a3576114a3611404565b816040528281528860208487010111156114bc57600080fd5b8260208601602083013760006020848301015280955050505050509250929050565b600081356114eb81611105565b6001600160a01b03168352602082013536839003601e1901811261150e57600080fd5b820160208101903567ffffffffffffffff81111561152b57600080fd5b80360382131561153a57600080fd5b6040602086015261154f604086018284611342565b95945050505050565b6000838385526020808601955060208560051b830101846000805b888110156115b757858403601f19018a52823536899003603e19018112611598578283fd5b6115a4858a83016114de565b9a86019a94505091840191600101611573565b509198975050505050505050565b6080815260006115d960808301888a611558565b82810360208401526115ec818789611558565b9050828103604084015261160081866114de565b9050828103606084015261161481856114de565b9998505050505050505050565b6001600160a01b038316815260406020820181905260009061137f908301846112e956fef88ce1fdb7fb1cbd3282e49729100fa3f2d6ee9f797961fe4fb1871cea89ea02a26469706673582212208eb21146a4447f285077234fe25d3b92d22d6a5c241cd7b1a3cbcdbae982aada64736f6c63430008170033";