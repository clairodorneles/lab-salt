include:
  - nodejs-pkg

hwaas-user:
  user.present:
    - name: hwaas
    - home: /home/hwaas

git-client-package:
  pkg.installed:
    - name: git

hwaas-source:
  git.latest:
    - name: https://github.com/clairodorneles/helloworld-As-A-Service.git
    - rev: master
    - target: /home/hwaas/hwaas-site
    - require:
      - user: hwaas-user
      - pkg: git-client-package
      - sls: nodejs-pkg

hwaas-npm-install:
  cmd.wait:
    - name: npm install
    - cwd: /home/hwaas/hwaas-site
    - watch:
      - git: hwaas-source

hwaas-build-script:
  cmd.wait:
    - name: npm run-script build
    - cwd: /home/hwaas/hwaas-site
    - watch:
      - git: hwaas-source
