### create azure frontdoor standard origin group

```text
az afd origin-group create -g test \
      --origin-group-name origin-group \
      --profile-name test \
      --probe-request-type GET \
      --probe-protocol Http \
      --probe-interval-in-seconds 120 \
      --probe-path /api/version \
      --sample-size 4 \
      --successful-samples-required 3 \
      --additional-latency-in-milliseconds 500
```

### create azure frontdoor standard origin in the origin group

```bash
az afd origin create -g group \
      --host-name example.contoso.com \
      --profile-name profile \
      --origin-group-name originGroup \
      --origin-name origin1 \
      --origin-host-header example.contoso.com \
      --priority 1 \
      --weight 1000 \
      --enabled-state Enabled \
      --http-port 80 \
      --https-port 443
```


### create endpoint
```bash
az afd endpoint create --endpoint-name  \
                       --profile-name   \
                       --resource-group \
                       [--enabled-state {Disabled, Enabled}] \
                       [--name-reuse-scope {NoReuse, ResourceGroupReuse, SubscriptionReuse, TenantReuse}] \
                       [--tags] \
```


### create routes

```bash
az afd route create -g group \
        --endpoint-name endpoint1 \
        --profile-name profile \
        --route-name route1 \
        --patterns-to-match /test1/* /tes2/* \
        --origin-group og001 \
        --supported-protocols Http Https \
        --custom-domains cd001 \
        --forwarding-protocol MatchRequest \
        --https-redirect Enabled \
        --link-to-default-domain Enabled
```
