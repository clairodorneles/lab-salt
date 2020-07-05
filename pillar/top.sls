base:
  '*':
    - common

  'lb':
    - override
  'roles:hwaas-lb':
    - match: grain
    - hwaas-ssl
