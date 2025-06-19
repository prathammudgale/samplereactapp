# Stage 1: Build the app
FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

# Stage 2: Serve the app using 'serve'
FROM node:18-alpine

WORKDIR /app

# Install a simple static file server
RUN npm install -g serve

# Copy the build output from the previous stage
COPY --from=build /app/dist .

# Serve on port 3000
EXPOSE 3000

CMD ["serve", "-s", ".", "-l", "3000"]
