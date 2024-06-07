# Identity Management System

The Identity Management System is a Flask web application that allows users to register their identities and retrieve identity information stored on a blockchain network. It interacts with a smart contract deployed on a local Ganache network using Web3.

## Requirements

- Python 3.x
- Flask
- Web3
- Ganache (for local blockchain)

## Installation

1. Clone the repository:

    ```
    git clone https://github.com/sathinilokesh/Identity-Management-Using-Blockchain.git
    ```

2. Install dependencies:

    ```
    pip install flask web3
    ```

## Steps to run project

### Step-by-Step Guide Using Hardhat

#### 1. Set Up the Environment
1. **Install Node.js and npm**:
    - Download and install from [Node.js official site](https://nodejs.org/).

2. **Install Ganache**:
    - Download and install from [Truffle's official site](https://www.trufflesuite.com/ganache).

3. **Install Python and pip**:
    - Download and install from [Python's official site](https://www.python.org/).

4. **Install Flask**:
    ```bash
    pip install Flask
    ```

5. **Install Web3.py**:
    ```bash
    pip install web3
    ```

6. **Install Hardhat**:
    ```bash
    npm install --save-dev hardhat
    ```

2. **Initialize a Hardhat project**:
    ```bash
    npx hardhat
    ```
    Follow the prompts to create a basic sample project.

3. **Install Hardhat dependencies**:
    ```bash
    npm install --save-dev @nomiclabs/hardhat-ethers ethers
    ```
    
#### 4. Compile and Deploy the Contract

1. **Compile the contract**:
    ```bash
    npx hardhat compile
    ```

2. **Run Ganache**:
    - Start Ganache to have a local blockchain running.



2. **Copy `Identity.json` from `artifacts/contracts` ** to store the ABI and contract address (generated after deployment). Paste this file in the root directory:


## Usage

1. Start the Flask application:

    ```
    python app.py
    ```

2. Access the following endpoints:

    - `POST /register`: Register a new identity by providing name, email, and phone in the request body.
    - `GET /identity/<user_address>`: Retrieve identity information for the specified Ethereum address.

## Configuration

- You can modify the Ganache RPC endpoint in the `app.py` file (`http://127.0.0.1:8545` by default) to connect to a different blockchain network.
- The smart contract ABI and bytecode should be stored in a JSON file named `Identity.json`.

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## License

This project is licensed under the [MIT License](LICENSE).

---
