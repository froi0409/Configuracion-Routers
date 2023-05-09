
# Configuración de /etc/exports
/nfsshare    10.10.20.72/29(rw,sync,no_subtree_check)
/nfsshare    10.10.20.80/29(rw,sync,no_subtree_check)
/nfsshare    10.10.20.88/29(rw,sync,no_subtree_check)
/nfsshare    10.10.20.96/29(rw,sync,no_subtree_check)
/nfsshare    10.10.20.104/29(rw,sync,no_subtree_check)




chown nobody:nogroup /nfsshare
chmod 755 /nfsshare
chmod -R 777 /nfsshare
