run_action compose $STACK_NAME run backup mono /app/duplicati/Duplicati.CommandLine.exe find \
    $TARGET \
    "[.+]" \
  --passphrase="$BACKUP_PASS" \
  --dbpath="/app/db/db.sqlite" \
  --disable-module="console-password-input"


