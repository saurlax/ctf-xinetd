# ctf_xinetd

A simple CTF challenge template using xinetd and Docker.

## Configuration

Write your challenge in `pwn.c` and customize gcc compilation parameters in `build.sh`.

The challenge code will be compiled in the container and deleted after compilation is complete.

## Build

```bash
docker build -t hello-pwn .
```

## Run

```bash
docker run -d -p 3000:3000 -e FLAG="flag{test_flag}" hello-pwn
```

## Capture traffic

```bash
tcpdump -w hello-pwn.pcap -i eth0 port 3000
```
