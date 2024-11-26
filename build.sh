export POSTGRES_IMAGE_NAME="postgres-timescaled-ce:1.0.0"

git clone https://github.com/zalando/spilo
cd spilo/postgres-appliance

docker build --build-arg TIMESCALEDB_APACHE_ONLY=false --tag $POSTGRES_IMAGE_NAME .
cd ../..
rm -rf spilo