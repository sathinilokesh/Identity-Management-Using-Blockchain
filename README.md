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
    git clone https://github.com/your-username/identity-management-system.git
    ```

2. Install dependencies:

    ```
    pip install flask web3
    ```

3. Make sure Ganache is running locally.

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

Feel free to adjust the README according to your specific requirements or additional details you want to include.
