# Hardhat Security
- [Tools](#tools)
- [Games](#games)
- [Blogs](#blogs)
- [Audit Examples:](#audit-examples)
- [Articles](#articles)
- [Getting Started](#getting-started)
  - [Requirements](#requirements)
  - [Quickstart](#quickstart)
- [Usage](#usage)
  - [Slither](#slither)
  - [Echidna](#echidna)
- [Linting](#linting)
- [Formatting](#formatting)

## Tools

-   [Slither](https://github.com/crytic/slither)
    -   Static analysis from Trail of Bits.
-   [Echidna](https://github.com/crytic/echidna)
    -   Fuzzing from Trail of Bits.
-   [Manticore](https://github.com/trailofbits/manticore)
    -   Symbolic execution tool from Trail of Bits.
-   [MythX](https://mythx.io/)
    -   Paid service for smart contract security.
-   [Mythrill](https://github.com/ConsenSys/mythril)
    -   MythX free edition.
-   [ETH Security Toolbox](https://github.com/trailofbits/eth-security-toolbox)
    -   Script to create docker containers configured with Trail of Bits security tools.
-   [ethersplay](https://github.com/crytic/ethersplay)
    -   ETH Disassembler
-   [Consensys Security Tools](https://consensys.net/diligence/tools/)
    -   A list of Consensys tools.

## Games

-   [Ethernaut](https://ethernaut.openzeppelin.com/) (This is a must play!)
-   [Damn Vulnerable Defi](https://www.damnvulnerabledefi.xyz/) (This is a must play!)

## Blogs

-   [rekt](https://rekt.news/)
    -   A blog that keeps up with all the "best" hacks in the industry.
-   [Trail of bits blog](https://blog.trailofbits.com/)
    -   Learn from one of the best auditors in the space.
-   [Openzeppelin Blog](https://blog.openzeppelin.com/)
    -   Another blog of one of the best auditors in the space.

## Audit Examples:
- [Openzeppelin](https://blog.openzeppelin.com/fei-audit-2/)
- [Sigma Prime](https://tracer.finance/radar/sigma-prime-audit/)
- [Trail of Bits](https://alephzero.org/blog/trail-of-bits-audit-security/)

## Articles

-   [Smart Contract Security Best Practices](https://consensys.github.io/smart-contract-best-practices/)
    -   Consensys blog on security vulnerabilities. Also [check out their tools.](https://consensys.net/diligence/tools/)
-   [Chainlink X Certik Blog on Security](https://www.certik.com/resources/blog/technology/top-10-defi-security-best-practices)
-   [More attacks](https://consensys.github.io/smart-contract-best-practices/attacks/denial-of-service/)

# Getting Started

## Requirements

-   [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
    -   You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
-   [Nodejs](https://nodejs.org/en/)
    -   You'll know you've installed nodejs right if you can run:
        -   `node --version` and get an ouput like: `vx.x.x`
-   [Docker](https://docs.docker.com/get-docker/)
    -   You'll know you've installed docker right if you can run:
    -   `docker --version` and get an ouput like `Docker version xx.xx.xx, build xxxxx`

## Quickstart

```
git clone https://github.com/0x963D/hardhat-security
cd hardhat-security
npm install
```

# Usage

## Slither 

Open the docker shell:

```
npm run toolbox
```

Then, run:

```
slither /src/contracts/ --solc-remaps @openzeppelin=/src/node_modules/@openzeppelin --exclude naming-convention,external-function,low-level-calls
```

To exit:

```
exit
```


## Echidna

Open the docker shell:

```
npm run toolbox
```

Then, run this:

```
echidna-test /src/contracts/mock/test/fuzzing/VaultFuzzTest.sol --contract VaultFuzzTest --config /src/contracts/mock/test/fuzzing/config.yaml
```

To exit:

```
exit
```

# Linting

To check linting / code formatting:

```
npm run lint
```

or, to fix:

```
npm run lint:fix
```

# Formatting

```
npm run format
```