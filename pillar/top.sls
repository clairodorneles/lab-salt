base:
  '*':
    - common

  'lb':
    - override
  'roles:hwaas-lb':
    - match: grain
    - hwaas-ssl
  'roles:hwaas-web':
    - match: grain
    - hwaas-web-mine