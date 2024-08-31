# cloud-init-bootstrap

## Description

Cloud-init offers native Ansible support. This means that we can now execute Ansible playbooks directly from within the cloud-init config file. This is a huge advantage as it allows us to execute Ansible playbooks via an interface in a supported manner.

## Requirements

- Cloud-Init
- Ansible

## Installation

```yaml
#cloud-config
# vim:syntax=yaml
```

## Usage

```shell
cloud-init single --name cc_ansible
```

```bash
ansible-playbook -i hosts al2023.yml
```

## Troubleshooting

Debugging cloud-init issues is not always the easiest thing to do.

### Cloud-Init Troubleshooting

By default cloud-init writes its logs to the following places:

```shell
cat /var/log/cloud-init.log
```

```shell
cat /var/log/cloud-init-output.log
```

```shell
journalctl -u cloud-init.service
```

Ubuntu:

```shell
cat /var/log/syslog
```

The `output` key can be used in the cloud-init config file to adjust the output location.

```yaml
output:
  all: '| tee -a /var/log/cloud-init-output.log'
```

The generated full cloud-config can be found in the following place:

```shell
cat /var/lib/cloud/instance/cloud-config.txt
```

### Ansible Troubleshooting

## References

- [Ansible Cloud-Init](https://github.com/ansible/ansible-modules-extras/tree/main/cloud/cloud_init)
- [Cloud-Init](https://cloudinit.readthedocs.io/en/latest/)
- [Cloud-Init Example](https://github.com/canonical/cloud-init/blob/main/doc/examples/cloud-config.txt)
- [Cloud-Init Example](https://github.com/canonical/cloud-init/tree/main/doc/examples)