CREATE KEYSPACE mesg
           WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};