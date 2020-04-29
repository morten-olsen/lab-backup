run_action compose $STACK_NAME run backup mono /app/duplicati/Duplicati.CommandLine.exe backup \
    $TARGET /source \
  --backup-name="server.$CURRENT_LAB.backup" \
  --dbpath="/app/db/db.sqlite" \
  --encryption-module="aes" \
  --compression-module="zip" \
  --dblock-size="50mb" \
  --keep-time="3M" \
  --passphrase="$BACKUP_PASS" \
  --disable-module="console-password-input"

