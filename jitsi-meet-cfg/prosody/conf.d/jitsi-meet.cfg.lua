admins = { "focus@auth.meet.jitsi" }
plugin_paths = { "/prosody-plugins/", "/prosody-plugins-custom" }
http_default_host = "meet.jitsi"












VirtualHost "meet.jitsi"

    authentication = "anonymous"

    ssl = {
        key = "/config/certs/meet.jitsi.key";
        certificate = "/config/certs/meet.jitsi.crt";
    }
    modules_enabled = {
        "bosh";
        "pubsub";
        "ping";
        
        
    }

    c2s_require_encryption = false



VirtualHost "auth.meet.jitsi"
    ssl = {
        key = "/config/certs/auth.meet.jitsi.key";
        certificate = "/config/certs/auth.meet.jitsi.crt";
    }
    authentication = "internal_plain"


VirtualHost "recorder.meet.jitsi"
    modules_enabled = {
      "ping";
    }
    authentication = "internal_plain"


Component "internal-muc.meet.jitsi" "muc"
    modules_enabled = {
        "ping";
        
    }
    storage = "memory"
    muc_room_cache_size = 1000

Component "muc.meet.jitsi" "muc"
    storage = "memory"
    modules_enabled = {
        
        
    }

Component "focus.meet.jitsi"
    component_secret = "s3cr37"

