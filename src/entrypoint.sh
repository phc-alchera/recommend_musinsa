case "$1" in
  test)
	#exec python3 /src/server/init/create_mysql_db.py init-db-scheme
	#exec python3 /src/server/init/create_mysql_db.py upload-data
    exec python3 -m pytest -s tests
    ;;
  setup)
	exec python3 src/server/init/create_mysql_db.py init-db-scheme
	exec python3 src/server/init/create_mysql_db.py upload-data
	;;
  *)
    exec "$@"
    ;;
esac

