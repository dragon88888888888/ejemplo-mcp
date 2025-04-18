# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM oven/bun:alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN bun install

# Run the MCP server over stdio
CMD ["bun", "run", "main.ts"]
