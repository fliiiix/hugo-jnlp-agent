# hugo-jnlp-agent

You can find [this](https://hub.docker.com/r/surenpi/hugo-jnlp-agent) from hub.docker.com.

# Run

You can running a Jnlp-Agent use below cmd line:

`docker run --rm l33tname/hugo-jnlp-agent hugo help`

# Kubernets Plugin

You can add this agent to your kubernetes plugin, like:

```
Name=jnlp
Docker image=surenpi/hugo-jnlp-agent
Command to run=
Arguments to pass to the command=${computer.jnlpmac} ${computer.name}
Allocate pseudo-TTY=false
```
