<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connect Wallet</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('<%= request.getContextPath() %>views/anh/wallpaperflare.com_wallpaper_utral.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        #wallet-container {
            background-color: rgba(255, 255, 255, 0.6);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
            backdrop-filter: blur(10px);
        }

        #wallet-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        #wallet-message {
            margin-bottom: 20px;
        }

        button {
            padding: 10px 20px;
            margin-top: 10px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            display: inline-block;
            width: 100%;
            box-sizing: border-box;
        }

        #connect-wallet-btn {
            background-color: #28a745;
            color: white;
        }

        #disconnect-wallet-btn {
            background-color: #dc3545;
            color: white;
        }

        #wallet-info {
            margin-top: 20px;
        }

        #wallet-address {
            word-wrap: break-word;
            font-weight: bold;
            overflow-wrap: anywhere;
            word-break: break-all;
        }

        #notification {
            margin-top: 15px;
            padding: 10px;
            border-radius: 5px;
            display: none;
        }

        .success {
            background-color: #d4edda;
            color: #155724;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
        }

        /* Home Icon Styling */
        #home-icon {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        #home-icon a {
            text-decoration: none;
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
        }

        #home-icon a:hover {
            color: #0056b3;
        }

    </style>
</head>
<body>

<!-- Home icon at the top-left corner -->
<div id="home-icon">
    <a href="/trangchu">🏠 Home</a>
</div>

<div id="wallet-container">
    <div id="wallet-title">Connect Your Phantom Wallet</div>

    <p id="wallet-message">Please install the Phantom Wallet extension.</p>
    <button id="connect-wallet-btn" style="display: none;">Connect Wallet</button>
    <div id="wallet-info" style="display: none;">
        <p>Connected wallet address: <span id="wallet-address"></span></p>
        <button id="disconnect-wallet-btn">Disconnect Wallet</button>
    </div>
    <div id="notification" class=""></div>
</div>

<script>
    let walletAddress = null;
    let phantomAvailable = false;

    // Check if Phantom is available
    window.addEventListener('load', () => {
        if (window.solana && window.solana.isPhantom) {
            phantomAvailable = true;
            document.getElementById('wallet-message').textContent = '';
            document.getElementById('connect-wallet-btn').style.display = 'block';
        }
    });

    // Show notification
    function showNotification(message, type) {
        const notification = document.getElementById('notification');
        notification.textContent = message;
        notification.className = type;
        notification.style.display = 'block';
        setTimeout(() => {
            notification.style.display = 'none';
        }, 3000);
    }

    // Function to connect the wallet
    async function connectWallet() {
        if (phantomAvailable) {
            try {
                const response = await window.solana.connect();
                walletAddress = response.publicKey.toString();
                document.getElementById('wallet-address').textContent = walletAddress;
                document.getElementById('wallet-info').style.display = 'block';
                document.getElementById('connect-wallet-btn').style.display = 'none';
                showNotification('Wallet connected successfully!', 'success');
                console.log('Connected to wallet:', walletAddress);
            } catch (err) {
                console.error('Failed to connect wallet:', err);
                showNotification('Failed to connect wallet.', 'error');
            }
        } else {
            alert('Phantom Wallet is not installed or detected!');
        }
    }

    // Function to disconnect the wallet
    function disconnectWallet() {
        walletAddress = null;
        document.getElementById('wallet-address').textContent = '';
        document.getElementById('wallet-info').style.display = 'none';
        document.getElementById('connect-wallet-btn').style.display = 'block';
        if (window.solana) {
            window.solana.disconnect();
        }
        showNotification('Wallet disconnected successfully!', 'success');
        console.log('Disconnected from wallet');
    }

    // Add event listeners to buttons
    document.getElementById('connect-wallet-btn').addEventListener('click', connectWallet);
    document.getElementById('disconnect-wallet-btn').addEventListener('click', disconnectWallet);
</script>
</body>
</html>
