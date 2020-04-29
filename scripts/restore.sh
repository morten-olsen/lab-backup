run_action compose $STACK_NAME run backup mono /app/duplicati/Duplicati.CommandLine.exe restore\
    file:///target \
  --passphrase="$BACKUP_PASS" \
  --disable-module="console-password-input"

