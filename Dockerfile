# 1. Use Node.js version 22
FROM node:22

# 2. Create a folder for our app
WORKDIR /app

# 3. Copy your package.json and install the tools (express, axios, etc.)
COPY package*.json ./
RUN npm install

# 4. Copy your server.js code
COPY . .

# 5. Tell the proxy to use port 7860 (Hugging Face's favorite port)
ENV PORT=7860
EXPOSE 7860

# 6. Start the engine!
CMD ["node", "server.js"]
