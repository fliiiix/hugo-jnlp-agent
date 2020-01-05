#!/bin/sh

export GIT_SSH_COMMAND="ssh -i /home/l33tname/hugo/hugo-docker-agent-deploy"
GITREPO=/home/l33tname/hugo/git/

latest_rel=$(curl -s https://github.com/gohugoio/hugo/releases.atom | grep -oPm1 "(?<=<title>v)[^<]+")

echo "The latest hugo release is: ${latest_rel}"

echo "update git repo and tags"
cd $GITREPO
git pull
git pull --tags
git_tags=$(git tag)

if echo "${git_tags}" | grep -q "v${latest_rel}"; then
    echo "The hugo release ${latest_rel} exists as git tag"
else
    echo "There is no git tag for release ${latest_rel}"
    sed -i "s/ENV HUGO_VERSION.*/ENV HUGO_VERSION ${latest_rel}/g" ${GITREPO}Dockerfile
    git commit -am "Update hugo to version ${latest_rel}"
    git tag -a "v${latest_rel}" -m "Release version ${latest_rel}"

    git push
    git push --tags
fi
