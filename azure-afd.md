# create azure frontdoor standard origin group
az afd origin-group create -g group \
      --origin-group-name og1 \
      --profile-name profile \
      --probe-request-type GET \
      --probe-protocol Http \
      --probe-interval-in-seconds 120 \
      --probe-path /test1/azure.txt \
      --sample-size 4 \
      --successful-samples-required 3 \
      --additional-latency-in-milliseconds 50
