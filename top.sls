base:
  'roles:hwaas-web':
    - match: grain
    - nodejs-pkg
    - hwaas-service
  'roles:hwaas-lb': 
    - match: grain
    - load-balance
  'roles:hwaas-node':
    - match: grain
    - waagent
    - timezone