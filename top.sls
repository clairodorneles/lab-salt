base:
  'roles:hwaas-web':
    - match: grain
    - nodejs-pkg
    - hwaas-service
  'roles:hwaas-lb': 
    - match: grain
    - load-balance
  'roles:hwass-nodes':
    - match: grain
    - waagent
    - timezone