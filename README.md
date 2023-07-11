## Example

```sh
docker run
   --rm
   --security-opt seccomp=unconfined
   --shm-size="1gb"
   --env URL=https://example.com/
   --env STREAM_URL=rtmp://live.twitch.tv/app/TWITCH_STREAM_KEY
   lisyaoff/chromium-rtmp-stream
```

```yaml
version: '3.5'
services:
  twitch:
    image: lisyaoff/chromium-rtmp-stream
    shm_size: '1gb'
    network_mode: 'host'
    security_opt:
      - seccomp:unconfined
    environment:
      - URL=https://example.com/
      - STREAM_URL=rtmp://live.twitch.tv/app/TWITCH_STREAM_KEY
```

## Chromium settings

```sh
--window-size=1920x1080
--disable-restore-session-state
--ignore-certificate-errors
--user-data-dir=/tmp/chromium-data
--disable-web-security
--disable-site-isolation-trials
--autoplay-policy=no-user-gesture-required
--no-sandbox
--kiosk
```

## License

The MIT License (MIT)
