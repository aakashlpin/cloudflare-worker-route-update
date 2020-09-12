# Cloudflare Workers Route Update Action

This action that lets you update your Cloudflare workers route pattern.

## Inputs

### `CF_EMAIL`

**Required** Your Cloudflare email id

### `CF_API_KEY`

**Required** Your Cloudflare API Key

### `CF_ZONE_ID`

**Required** Your Cloudflare Zone id

### `CF_ROUTE_ID`

**Required** Route Id of the Worker you're trying to update

Run this command locally to get the Route Object for the workers in the Zone:
```
curl -X GET "https://api.cloudflare.com/client/v4/zones/${CF_ZONE_ID}/workers/routes/" \
-H "X-Auth-Email: ${CF_EMAIL}" \
-H "X-Auth-Key: ${CF_API_KEY}"
```

It'll give a response like below:
```
{
  "result": [
    {
      "id": "route_id",
      "pattern": "yourdomain.com/*",
      "script": "worker-id",
      "request_limit_fail_open": false
    }
  ],
  "success": true,
  "errors": [],
  "messages": []
}
```

Grab the `route_id` from this response.

### `CF_WORKER_NAME`

**Required** Your Cloudflare Worker Id

## `CF_ROUTE_PATTERN`

**Required** The new route pattern that you wish to update


## Example usage

Add all these variables to Github Secrets to not hardcode or expose them to public.

```
uses: actions/cloudflare-worker-route-update@v1
with:
  CF_EMAIL: ${{ secrets.CF_EMAIL }}
  CF_API_KEY: ${{ secrets.CF_API_KEY}}
  CF_ZONE_ID: ${{ secrets.CF_ZONE_ID }}
  CF_ROUTE_ID: ${{ secrets.CF_ROUTE_ID }}
  CF_WORKER_NAME: ${{ secrets.CF_WORKER_NAME }}
  CF_ROUTE_PATTERN: aakashgoel.me/*
```


## License

MIT licensed