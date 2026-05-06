# Build stage for React app
FROM node:alpine AS client-build

WORKDIR /client

# Copy client package files
COPY client/package*.json ./

# Install client dependencies
RUN npm install

# Copy client source code
COPY client/ ./

# Build the React app
RUN npm run build

# Production stage
FROM node:alpine

WORKDIR /app

# Copy server package files
COPY package*.json ./

# Install server dependencies (production only)
RUN npm install --only=production

# Copy server source code
COPY index.js ./

# Copy built React app from build stage
COPY --from=client-build /client/build ./client/build

# Create non-root user
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nextjs -u 1001

# Change ownership of the app directory
RUN chown -R nextjs:nodejs /app
USER nextjs

EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:3000/api/health', (res) => process.exit(res.statusCode === 200 ? 0 : 1))"

CMD ["node", "index.js"]