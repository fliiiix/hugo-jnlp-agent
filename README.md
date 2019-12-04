# hugo-jnlp-agent

You can find [this](https://hub.docker.com/repository/docker/l33tname/hugo-jnlp-agent) from hub.docker.com.

# Run

You can running a Jnlp-Agent use below cmd line:

```
sudo docker run --rm --entrypoint hugo l33tname/hugo-jnlp-agent help
```

Build `site` to `output`

```
sudo docker run --rm -v `pwd`/site:/src -v `pwd`/output:/src/public -w /src -it l33tname/hugo-jnlp-agent hugo
```

# Kubernets Plugin

You can add this agent to your kubernetes plugin, like:

```
Name=jnlp
Docker image=l33tname/hugo-jnlp-agent
Command to run=
Arguments to pass to the command=${computer.jnlpmac} ${computer.name}
Allocate pseudo-TTY=false
```
