SKIPUNZIP=1

# extract files
ui_print "- Extracting module files"
unzip -o "$ZIPFILE" module.prop system.prop -d $MODPATH >&2

# Set executable permissions
set_perm_recursive "$MODPATH" 0 0 0755 0644
