alias brew-restart-postgres='brew services stop postgresql@14; rm /usr/local/var/postgresql@14/postmaster.pid; brew services start postgresql@14'
