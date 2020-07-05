base:
  'role:hwaas-web':
    - match: grain
    - nodejs-pkg
    - hwaas-service
  'role:hwaas-lb': 
    - match: grain
    - load-balance
  'role:hwaas-node':
    - match: grain
    - waagent
