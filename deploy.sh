#!/bin/bash

# Install Netlify CLI if not already installed
if ! command -v netlify &> /dev/null; then
    echo "Installing Netlify CLI..."
    npm install -g netlify-cli
fi

# Login to Netlify (will open browser for authentication)
echo "Please log in to Netlify in the browser window that opens..."
netlify login

# Deploy the site
echo "Deploying to Netlify..."
netlify deploy --prod

echo "Deployment complete! Your site is now live at the URL shown above."
