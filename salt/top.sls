base:
  'roles:hwaas-web':
    - match: grain
    - nodejs-pkg
    - hwaas-service
  'roles:hwaas-lb': 
    - match: grain
    - load-balance