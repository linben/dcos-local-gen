# dcos-local-gen

Ansible playbook to build the local universe tarball, upload to s3, deploy on the DC/OS masters, and update agent certificates.

<b>NOTE:</b> In the future this will be replaced by DC/OS Package Registry.

**Prerequisites**
- Build target system: Centos 7.3 with Docker installed
- Ansible 2.4.2

**Setup**
1. Copy ```hosts.example``` to ```hosts``` and update build node IP, master node IP, agent IPs
2. Modify ```default_vars``` with DC/OS version, required packages, and optionally AWS access credentials
3. If not using s3, comment out the ```s3upload.yml``` in ```site.yml``` and change the tarball url location in ```deploy.yml```
4. Run the ```run.sh``` script or run each playbook individually.
