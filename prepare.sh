load_lib secrets

create_generate_secret backup_pass
create_input_secret dropbox_auth
# https://duplicati-oauth-handler.appspot.com/?type=dropbox

export CURRENT_LAB=${CURRENT_LAB:-undefinedlab}

export BACKUP_PASS="$(get_secret backup_pass)"
export DROPBOX_AUTH="$(get_secret dropbox_auth)"
export TARGET="dropbox://backups/$CURRENT_LAB --authid=$DROPBOX_AUTH"
