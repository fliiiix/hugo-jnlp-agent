# hugo-jnlp-agent

# Prepare

First, create a permanent agent. Like `http://localhost:8088/computer/new`. Than you can get the secret from `http://localhost:8088/computer/hugo/`.

# Run

You can running a Jnlp-Agent use below cmd line:

`docker run --rm surenpi/hugo-jnlp-agent hugo help`

# Kubernets Plugin

You can add this agent to your kubernetes plugin, like:

```
Name=jnlp
Docker image=surenpi/hugo-jnlp-agent
Command to run=/bin/sh -c
Arguments to pass to the command=cat
Allocate pseudo-TTY=true
```
