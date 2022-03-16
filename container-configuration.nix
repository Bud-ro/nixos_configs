{ config, pkgs, ... }:
  {
    config.virtualisation.oci-containers.containers = {
      changedetection.io = { # will this work when there's a . in the name?
        image = "dgtlmoon/changedetection.io:latest";
        ports = ["127.0.0.1:5000:5000"];
        volumes = [
          "/root/changedetection.io/packageStatistics.json:/root/changedetection.io/packageStatistics.json"
        ];
        cmd = [
          "--base-url"
          "\"/changedetection.io\""
        ];
      };
    };
}