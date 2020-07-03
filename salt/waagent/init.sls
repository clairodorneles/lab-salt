walinuxagent:
  service.running:
    - watch:
      - file: /etc/waagent.conf

/etc/waagent.conf:
  file.managed:
    - source: salt://waagent/waagent.conf