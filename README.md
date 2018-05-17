# hugo-jnlp-agent

# Prepare

First, create a permanent agent. Like `http://localhost:8088/computer/new`. Than you can get the secret from `http://localhost:8088/computer/hugo/`.

# Run

You can running a Jnlp-Agent use below cmd line:

`docker run -d --rm surenpi/hugo-jnlp-agent -url=http://localhost:8080 b8cc4438186cc75c817cbf01447359833a3158e4e79588cfe48666e7b667c616 hugo`

If you are in China, please use bellow address:

`docker pull registry.cn-qingdao.aliyuncs.com/surenpi/hugo-jnlp-agent`
