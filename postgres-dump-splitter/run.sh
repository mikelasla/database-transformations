OUTPUT_DIR="/Users/angelborroy/Desktop/AZ/migration/auto/"

mvn clean package
java -jar target/postgres-dump-splitter-0.0.1-SNAPSHOT.jar --output.dir="$OUTPUT_DIR" --pgdump.path="$1"