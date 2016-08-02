docker login -e="." -u="$1" -p="$2" quay.io

docker run -e "AMPOOL_SERVICE_HOST=ampool-locator" quay.io/falkonry/ampool:locator.latest
docker run -e "AMPOOL_SERVICE_HOST=ampool-server" -e "AMPOOL_LOCATOR_HOST=ampool-locator" -e "AMPOOL_INITIAL_HEAP=20g" -e "AMPOOL_MAX_HEAP=20g" quay.io/falkonry/ampool:server.latest
# docker run -e "falkonry_merlin_process_image=quay.io/falkonry/tercel" -e "falkonry_merlin_process_version=master.latest" -e "falkonry_merlin_process_default_version=ampool.2578" -e "falkonry_merlin_host=sahil.westus.cloudapp.azure.com"-e "falkonry_merlin_internal_host=dev-dev-merlin" -e "falkonry_merlin_engineManager_mode=azure" -e "falkonry_azure_port=443" -e "falkonry_merlin_excludePort=true" -e "falkonry_merlin_hostProtocol=https" -e "falkonry_merlin_AuthLimit_domain=falkonry.com" quay.io/falkonry/tercel:ampool.latest
# docker run quay.io/falkonry/insight:release.latest
# docker run quay.io/falkonry/tercel:release.latest
#docker login -e="." -u="falkonry+developers" -p="RVHMGP7Y90RS6K9GESLPM1T0G73H8TOCFR40D0E4CD1S9RTEC3P8D25ZQXHG2YKG" quay.io
# ssh -i ~/.ssh/azure_id_rsa sahil@sahiltestmgmt.westus.cloudapp.azure.com -A -p 2200
