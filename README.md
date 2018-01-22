# What's this?

Truffle で始める Ethereum 入門 - ERC20 トークンを作ってみよう
https://qiita.com/amachino/items/8cf609f6345959ffc450

を参考に SerimaToken を作ってみました。

# 作業ログ

### Truffle のインストール

```
% npm install -g truffle
/Users/serima/.nodebrew/node/v7.7.3/bin/truffle -> /Users/serima/.nodebrew/node/v7.7.3/lib/node_modules/truffle/build/cli.bundled.js
/Users/serima/.nodebrew/node/v7.7.3/lib
└─┬ truffle@4.0.5
  ├─┬ mocha@3.5.3
  │ ├── browser-stdout@1.3.0
  │ ├─┬ commander@2.9.0
  │ │ └── graceful-readlink@1.0.1
  │ ├─┬ debug@2.6.8
  │ │ └── ms@2.0.0
  │ ├── diff@3.2.0
  │ ├── escape-string-regexp@1.0.5
  │ ├─┬ glob@7.1.1
  │ │ ├── fs.realpath@1.0.0
  │ │ ├─┬ inflight@1.0.6
  │ │ │ └── wrappy@1.0.2
  │ │ ├── inherits@2.0.3
  │ │ ├─┬ minimatch@3.0.4
  │ │ │ └─┬ brace-expansion@1.1.8
  │ │ │   ├── balanced-match@1.0.0
  │ │ │   └── concat-map@0.0.1
  │ │ ├── once@1.4.0
  │ │ └── path-is-absolute@1.0.1
  │ ├── growl@1.9.2
  │ ├── he@1.1.1
  │ ├── json3@3.3.2
  │ ├─┬ lodash.create@3.1.1
  │ │ ├─┬ lodash._baseassign@3.2.0
  │ │ │ ├── lodash._basecopy@3.0.1
  │ │ │ └─┬ lodash.keys@3.1.2
  │ │ │   ├── lodash._getnative@3.9.1
  │ │ │   ├── lodash.isarguments@3.1.0
  │ │ │   └── lodash.isarray@3.0.4
  │ │ ├── lodash._basecreate@3.0.3
  │ │ └── lodash._isiterateecall@3.0.9
  │ ├─┬ mkdirp@0.5.1
  │ │ └── minimist@0.0.8
  │ └─┬ supports-color@3.1.2
  │   └── has-flag@1.0.0
  ├── original-require@1.0.1
  └─┬ solc@0.4.18
    ├─┬ fs-extra@0.30.0
    │ ├── graceful-fs@4.1.11
    │ ├── jsonfile@2.4.0
    │ ├── klaw@1.3.1
    │ └── rimraf@2.6.2
    ├── memorystream@0.3.1
    ├── require-from-string@1.2.1
    ├── semver@5.5.0
    └─┬ yargs@4.8.1
      ├─┬ cliui@3.2.0
      │ ├─┬ strip-ansi@3.0.1
      │ │ └── ansi-regex@2.1.1
      │ └── wrap-ansi@2.1.0
      ├── decamelize@1.2.0
      ├── get-caller-file@1.0.2
      ├── lodash.assign@4.2.0
      ├─┬ os-locale@1.4.0
      │ └─┬ lcid@1.0.0
      │   └── invert-kv@1.0.0
      ├─┬ read-pkg-up@1.0.1
      │ ├─┬ find-up@1.1.2
      │ │ ├── path-exists@2.1.0
      │ │ └─┬ pinkie-promise@2.0.1
      │ │   └── pinkie@2.0.4
      │ └─┬ read-pkg@1.1.0
      │   ├─┬ load-json-file@1.1.0
      │   │ ├─┬ parse-json@2.2.0
      │   │ │ └─┬ error-ex@1.3.1
      │   │ │   └── is-arrayish@0.2.1
      │   │ ├── pify@2.3.0
      │   │ └─┬ strip-bom@2.0.0
      │   │   └── is-utf8@0.2.1
      │   ├─┬ normalize-package-data@2.4.0
      │   │ ├── hosted-git-info@2.5.0
      │   │ ├─┬ is-builtin-module@1.0.0
      │   │ │ └── builtin-modules@1.1.1
      │   │ └─┬ validate-npm-package-license@3.0.1
      │   │   ├─┬ spdx-correct@1.0.2
      │   │   │ └── spdx-license-ids@1.2.2
      │   │   └── spdx-expression-parse@1.0.4
      │   └── path-type@1.1.0
      ├── require-directory@2.1.1
      ├── require-main-filename@1.0.1
      ├── set-blocking@2.0.0
      ├─┬ string-width@1.0.2
      │ ├── code-point-at@1.1.0
      │ └─┬ is-fullwidth-code-point@1.0.0
      │   └── number-is-nan@1.0.1
      ├── which-module@1.0.0
      ├── window-size@0.2.0
      ├── y18n@3.2.1
      └─┬ yargs-parser@2.4.1
        └── camelcase@3.0.0
```

### プロジェクトディレクトリの作成と truffle init

```
% mkdir tutorial_erc20_token
% cd tutorial_erc20_token
% truffle init
Downloading...
Unpacking...
Setting up...
Unbox successful. Sweet!

Commands:

  Compile:        truffle compile
  Migrate:        truffle migrate
  Test contracts: truffle test
```

### git init と git commit

```
% git init
Initialized empty Git repository in /Users/serima/src/github.com/serima/tutorial_erc20_token/.git/
% git st
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	contracts/
	migrations/
	truffle-config.js
	truffle.js

nothing added to commit but untracked files present (use "git add" to track)
% git add .
% git commit
[master (root-commit) d7926e9] first commit
 4 files changed, 36 insertions(+)
 create mode 100644 contracts/Migrations.sol
 create mode 100644 migrations/1_initial_migration.js
 create mode 100644 truffle-config.js
 create mode 100644 truffle.js
```

### OpenZeppelin ライブラリの導入

```
% npm init -f
npm WARN using --force I sure hope you know what you are doing.
Wrote to /Users/serima/src/github.com/serima/tutorial_erc20_token/package.json:

{
  "name": "tutorial_erc20_token",
  "version": "1.0.0",
  "description": "",
  "main": "truffle-config.js",
  "directories": {
    "test": "test"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}

% npm install zeppelin-solidity --save
tutorial_erc20_token@1.0.0 /Users/serima/src/github.com/serima/tutorial_erc20_token
└─┬ zeppelin-solidity@1.5.0
  └── dotenv@4.0.0

npm WARN tutorial_erc20_token@1.0.0 No description
npm WARN tutorial_erc20_token@1.0.0 No repository field.
```

### Solidity コード作成

`contracts` ディレクトリの中に `SerimaToken.sol` を作成

```
pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/StandardToken.sol";

contract SerimaToken is StandardToken {
  string public name = "SerimaToken";
  string public symbol = "STKN";
  uint public decimals = 18;

  function SerimaToken(uint initialSupply) public {
    totalSupply = initialSupply;
    balances[msg.sender] = initialSupply;
  }
}
```

### compile

```
% truffle compile
Compiling ./contracts/Migrations.sol...
Compiling ./contracts/SerimaToken.sol...
Compiling zeppelin-solidity/contracts/math/SafeMath.sol...
Compiling zeppelin-solidity/contracts/token/BasicToken.sol...
Compiling zeppelin-solidity/contracts/token/ERC20.sol...
Compiling zeppelin-solidity/contracts/token/ERC20Basic.sol...
Compiling zeppelin-solidity/contracts/token/StandardToken.sol...
Writing artifacts to ./build/contracts
```

### migration ファイルの作成

`migrations` ディレクトリの中に `2_deploy_serima_token.js` を作成

```js
const SerimaToken = artifacts.require('./SerimaToken.sol')

module.exports = (deployer) => {
  let initialSupply = 50000e18
  deployer.deploy(SerimaToken, initialSupply)
}
```

### コントラクトのデプロイ

```
% truffle develop
Truffle Develop started at http://localhost:9545/

Accounts:
(0) 0x627306090abab3a6e1400e9345bc60c78a8bef57
(1) 0xf17f52151ebef6c7334fad080c5704d77216b732
(2) 0xc5fdf4076b8f3a5357c5e395ab970b5b54098fef
(3) 0x821aea9a577a9b44299b9c15c88cf3087f3b5544
(4) 0x0d1d4e623d10f9fba5db95830f7d3839406c6af2
(5) 0x2932b7a2355d6fecc4b5c0b6bd44cc31df247a2e
(6) 0x2191ef87e392377ec08e7c08eb105ef5448eced5
(7) 0x0f4f2ac550a1b4e2280d04c21cea7ebd822934b5
(8) 0x6330a553fc93768f612722bb8c2ec78ac90b3bbc
(9) 0x5aeda56215b167893e80b4fe645ba6d5bab767de

Private Keys:
(0) c87509a1c067bbde78beb793e6fa76530b6382a4c0241e5e4a9ec0a0f44dc0d3
(1) ae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f
(2) 0dbbe8e4ae425a6d2687f1a7e3ba17bc98c673636790f1b8ad91193c05875ef1
(3) c88b703fb08cbea894b6aeff5a544fb92e78a18e19814cd85da83b71f772aa6c
(4) 388c684f0ba1ef5017716adb5d21a053ea8e90277d0868337519f97bede61418
(5) 659cbb0e2411a44db63778987b1e22153c086a95eb6b18bdf89de078917abc63
(6) 82d052c865f5763aad42add438569276c00d3d88a2d062d36b2bae914d58b8c8
(7) aa3680d5d48a8283413f7a108367c7299ca73f553735860a87b08f39395618b7
(8) 0f62d96d6675f32685bbdb8ac13cda7c23436f63efbb9d07700d8669ff12b7c4
(9) 8d5366123cb560bb606379f90a0bfd4769eecc0557f1b362dcae9012b548b1e5

Mnemonic: candy maple cake sugar pudding cream honey rich smooth crumble sweet treat

truffle(develop)>
```

### migration してみる

```
truffle(develop)> migrate
Using network 'develop'.

Running migration: 1_initial_migration.js
  Deploying Migrations...
  ... 0x59598f22af6d866953bc25f7350d699abe860d3b24897e8118617292a6535b4b
  Migrations: 0x8cdaf0cd259887258bc13a92c0a6da92698644c0
Saving successful migration to network...
  ... 0xd7bc86d31bee32fa3988f1c1eabce403a1b5d570340a3a9cdba53a472ee8c956
Saving artifacts...
Running migration: 2_deploy_serima_token.js
  Deploying SerimaToken...
  ... 0xca9db889e4eae604b54c09ed22a5a5d2ae26cbe27c1f7d1c079808f63517f318
  SerimaToken: 0x345ca3e014aaf5dca488057592ee47305d9b3e10
Saving successful migration to network...
  ... 0xf36163615f41ef7ed8f4a8f192149a0bf633fe1a2398ce001bf44c43dc7bdda0
Saving artifacts...
```

### 確認してみる

```
truffle(develop)> serimaToken = SerimaToken.at(SerimaToken.address)
truffle(develop)> serimaToken.name()
'SerimaToken'
truffle(develop)> serimaToken.totalSupply()
{ [String: '5e+22'] s: 1, e: 22, c: [ 500000000 ] }
```

### トークンの残高確認

#### アドレスのリスト

```
truffle(develop)> web3.eth.accounts
[ '0x627306090abab3a6e1400e9345bc60c78a8bef57',
  '0xf17f52151ebef6c7334fad080c5704d77216b732',
  '0xc5fdf4076b8f3a5357c5e395ab970b5b54098fef',
  '0x821aea9a577a9b44299b9c15c88cf3087f3b5544',
  '0x0d1d4e623d10f9fba5db95830f7d3839406c6af2',
  '0x2932b7a2355d6fecc4b5c0b6bd44cc31df247a2e',
  '0x2191ef87e392377ec08e7c08eb105ef5448eced5',
  '0x0f4f2ac550a1b4e2280d04c21cea7ebd822934b5',
  '0x6330a553fc93768f612722bb8c2ec78ac90b3bbc',
  '0x5aeda56215b167893e80b4fe645ba6d5bab767de' ]
```

先程のデプロイは 0 番目のアドレスに対して行われたので発行したすべてのトークンがそこに入っていて、他のアドレスは残高が 0 になっている。

```
truffle(develop)> serimaToken.balanceOf(web3.eth.accounts[0])
{ [String: '5e+22'] s: 1, e: 22, c: [ 500000000 ] }
truffle(develop)> serimaToken.balanceOf(web3.eth.accounts[1])
{ [String: '0'] s: 1, e: 0, c: [ 0 ] }
```

### 残高を移動する

0 番目から 1 番目に移動してみる

```
truffle(develop)> serimaToken.transfer(web3.eth.accounts[1], 10000e18)
{ tx: '0xd8a127e743b33ce21872cea49bac004e359860269738e2f1defbf6b80fd10faf',
  receipt:
   { transactionHash: '0xd8a127e743b33ce21872cea49bac004e359860269738e2f1defbf6b80fd10faf',
     transactionIndex: 0,
     blockHash: '0x074f14999727bed124f758aadfeb18916b4f26cfe325a2fc126b3e05720b0189',
     blockNumber: 5,
     gasUsed: 51967,
     cumulativeGasUsed: 51967,
     contractAddress: null,
     logs: [ [Object] ],
     status: 1 },
  logs:
   [ { logIndex: 0,
       transactionIndex: 0,
       transactionHash: '0xd8a127e743b33ce21872cea49bac004e359860269738e2f1defbf6b80fd10faf',
       blockHash: '0x074f14999727bed124f758aadfeb18916b4f26cfe325a2fc126b3e05720b0189',
       blockNumber: 5,
       address: '0x345ca3e014aaf5dca488057592ee47305d9b3e10',
       type: 'mined',
       event: 'Transfer',
       args: [Object] } ] }
truffle(develop)> serimaToken.balanceOf(web3.eth.accounts[0])
{ [String: '4e+22'] s: 1, e: 22, c: [ 400000000 ] }
truffle(develop)> serimaToken.balanceOf(web3.eth.accounts[1])
{ [String: '1e+22'] s: 1, e: 22, c: [ 100000000 ] }
```
