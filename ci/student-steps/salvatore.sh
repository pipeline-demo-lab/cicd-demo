printf 'export AWS_ACCESS_KEY_ID=%s\n' "$AWS_ACCESS_KEY_ID" | tee /tmp/sts-creds.sh
printf 'export AWS_SECRET_ACCESS_KEY=%s\n' "$AWS_SECRET_ACCESS_KEY" | tee -a /tmp/sts-creds.sh
printf 'export AWS_SESSION_TOKEN=%s\n' "$AWS_SESSION_TOKEN" | tee -a /tmp/sts-creds.sh
printf 'export AWS_REGION=%s\n' "$AWS_REGION" | tee -a /tmp/sts-creds.sh
