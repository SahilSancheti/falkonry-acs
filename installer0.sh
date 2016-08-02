docker login -e="." -u="falkonry+developers" -p="RVHMGP7Y90RS6K9GESLPM1T0G73H8TOCFR40D0E4CD1S9RTEC3P8D25ZQXHG2YKG" quay.io

docker run docker.io/falkonry/hadoop:latest

docker run -e "AMPOOL_SERVICE_HOST=ampool-locator" quay.io/falkonry/ampool:locator.latest

docker run -e "AMPOOL_SERVICE_HOST=ampool-server" -e "AMPOOL_LOCATOR_HOST=172.17.0.5" -e "AMPOOL_INITIAL_HEAP=5g" -e "AMPOOL_MAX_HEAP=5g" quay.io/falkonry/ampool:server.latest

docker run --entrypoint /riactor/Run.sh \
-e "falkonry_tercel_io_timeSeries_impl=ampool" \
-e "falkonry_tercel_io_timeSeries_ampool_host=172.17.0.5" \
-e "falkonry_tercel_riactor_merlin_host=http://stable-stable-merlin:8080" \
-e "falkonry_tercel_riactor_spark_executor_memory=2g" \
-e "falkonry_tercel_riactor_spark_executor_core=4" \
quay.io/falkonry/tercel:release.latest

docker run \
-e "falkonry_merlin_process_image=quay.io/falkonry/tercel" \
-e "falkonry_merlin_process_version=master.latest" \
-e "falkonry_merlin_process_default_version=ampool.2578" \
-e "falkonry_merlin_host=sahiltestmgmt.westus.cloudapp.azure.com" \
-e "falkonry_merlin_internal_host=stable-stable-merlin" \
-e "falkonry_merlin_engineManager_mode=docker" \
-e "falkonry_docker_host=swarm-master-lb-BC92CA22" \
-e "falkonry_docker_port=443" \
-e "falkonry_merlin_excludePort=true" \
-e "falkonry_merlin_hostProtocol=https" \
-e "falkonry_merlin_AuthLimit_domain=falkonry.com" \
-e "falkonry_merlin_login_strategies=auth0" \
-e "falkonry_merlin_log_level=info" \
-e "falkonry_spark_enable=true" \
-e "falkonry_hdfs_host=hdfs://stable-stable-hadoop" \
-e "falkonry_hdfs_port=9000" \
-e "falkonry_hdfs_enable=true" \
-e "falkonry_tercel_process_ttl=4h" \
-e "falkonry_tercel_process_timeout=2h" \
-e "falknory_merlin_session_store_type=redis" \
-e "falkonry_merlin_session_store_host=stable-stable-redis" \
-e "falkonry_merlin_googleAnalytics_code=UA-51429511-4" \
-e "falkonry_merlin_process_resource_cpu=0.5" \
-e "falkonry_merlin_process_resource_memory=8Gi" \
-e "falkonry_merlin_paidAccount_isEnabled=true" \
-e "falkonry_tercel_process_spark_driver_memory=6g" \
-e "falkonry_tercel_process_spark_executors=1" \
-e "falkonry_tercel_process_spark_executor_memory=6g" \
-e "falkonry_tercel_process_spark_executor_core=1" \
-e "falkonry_tercel_process_numPartitions=8" \
-e "falkonry_merlin_process_reuseModel=false" \
-e "falkonry_tercel_io_timeSeries_impl=ampool" \
-e "falkonry_tercel_io_timeSeries_ampool_host=stable-ampool-locator" \
-e "falkonry_tercel_io_audit_file_directory=hdfs://stable-stable-hadoop:9000/tercel/audit" \
-e "falkonry_tercel_io_model_file_directory=hdfs://stable-stable-hadoop:9000/tercel/model" \
-e "falkonry_tercel_process_spark_checkpointPath=hdfs://stable-stable-hadoop:9000/tercel/spark" \
-e "falkonry_merlin_process_sandbox_ttl=2h" \
-e "falkonry_merlin_process_sandbox_timeout=1h" \
-e "falkonry_merlin_process_team_ttl=2h" \
-e "falkonry_merlin_process_team_timeout=1h" \
-e "falkonry_merlin_riactor_daemon_host=stable-stable-riactor" \
-e "falkonry_cache_redis_host=stable-stable-redis" \
-e "falkonry_merlin_process_notification_enable=true" \
-e "falkonry_cache_mode=redis" \
-e "falkonry_inspect_service_logLevel=all" \
-e "falkonry_merlin_process_autoUpgrade=true" \
-e "falkonry_merlin_process_kubeToken=quayrepo" \
-e "falkonry_merlin_instance_mode=public" \
-e "falkonry_merlin_billing_enable=true" \
-e "falkonry_ampool_host=172.17.0.6" \
-e "falkonry_ampool_port=9090" \
-e "falkonry_ampool_ahost=172.17.0.5" \
-e "falkonry_ampool_aport=7070" \
-e "falkonry_merlin_database=ampool" \
quay.io/falkonry/insight:release.latest




# ssh -i ~/.ssh/azure_id_rsa sahil@sahiltestmgmt.westus.cloudapp.azure.com -A -p 2200
