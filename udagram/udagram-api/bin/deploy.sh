# TODO: Initialize Elastic Beanstalk Project
eb init udagram-api --platform node.js --region us-east-1

# TODO: Create environment variable
# eb create --sample udagram-api-dev

# TODO: Use env vars:
eb use udagram-api-dev

# TODO: Set Environment Variables" 
eb setenv PORT=$PORT POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PORT=$POSTGRES_PORT

# TODO: Deploy 
eb deploy udagram-api-dev
# eb open

# eb terminate udagram-api-dev