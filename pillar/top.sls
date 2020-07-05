base:
  '*':
    - common

  'lb':
    - override
  'role:hwaas-lb':
    - match: grain
    - hwaas-ssl
  'role:hwaas-web':
    - match: grain
    - hwaas-web-mine