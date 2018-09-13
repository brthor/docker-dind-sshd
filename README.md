# docker-dind-sshd

Docker image running `dockerd` and `sshd` at the same time.

Used for testing certain scenarios.

*Warning*: For testing purposes only, all sshd authentication is disabled.

## Usage

Running on localhost:7777

```bash
$ docker run --privileged -d -p 127.0.0.1:7777:22 brthornbury/docker-dind-sshd --storage-driver=overlay
```

Connect with ssh

```bash
$ ssh -i /dev/null -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 7777 root@127.0.0.1
```