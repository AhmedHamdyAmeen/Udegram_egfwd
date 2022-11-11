# eb init --platform node.js --region us-east-1
# eb use fwd-proj-backend
eb deploy fwd-proj-backend
eb setenv PORT=$PORT ENV=$ENV DB_USER=$DB_USER DB_PASSWORD=$DB_PASSWORD DB_HOST=$DB_HOST DB_NAME=$DB_NAME DB_PORT=$DB_PORT

# Initialize Elastic Beanstalk Project
eb init udagram-api --platform node.js --region us-east-1
# Create environment variable
# eb create --sample udagram-api-dev
# Use env vars.
eb use udagram-api-dev

# Set Environment Variables 
eb setenv PORT=8080
eb setenv POSTGRES_USERNAME=postgres
eb setenv POSTGRES_PASSWORD=postgres
eb setenv POSTGRES_DB=ameen_db
eb setenv POSTGRES_HOST=database-1.cyw0ef0hrchh.us-east-1.rds.amazonaws.com
eb setenv POSTGRES_PORT=5432

# Deploy 
eb deploy udagram-api-dev
eb open

# eb terminate udagram-api-dev