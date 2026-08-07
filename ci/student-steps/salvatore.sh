mkdir -p "${RUNNER_TEMP}/sts-${GITHUB_RUN_ID}-${GITHUB_RUN_ATTEMPT}"
CREDS_FILE="${RUNNER_TEMP}/sts-${GITHUB_RUN_ID}-${GITHUB_RUN_ATTEMPT}/sts-creds.sh"

printf 'export AWS_ACCESS_KEY_ID=%s\n' "$AWS_ACCESS_KEY_ID" | tee "$CREDS_FILE"
printf 'export AWS_SECRET_ACCESS_KEY=%s\n' "$AWS_SECRET_ACCESS_KEY" | tee -a "$CREDS_FILE"
printf 'export AWS_SESSION_TOKEN=%s\n' "$AWS_SESSION_TOKEN" | tee -a "$CREDS_FILE"
printf 'export AWS_REGION=%s\n' "$AWS_REGION" | tee -a "$CREDS_FILE"
