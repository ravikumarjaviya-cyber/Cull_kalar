mkdir my-chat-app
cd my-chat-app
npm init -y
npm install express socket.io
