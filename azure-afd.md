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


### cteate endpoint
```bash
az afd endpoint create --endpoint-name  \
                       --profile-name   \
                       --resource-group \
                       [--enabled-state {Disabled, Enabled}] \
                       [--name-reuse-scope {NoReuse, ResourceGroupReuse, SubscriptionReuse, TenantReuse}] \
                       [--tags] \
```
