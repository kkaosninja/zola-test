[![.github/workflows/pages-deployment.yaml](https://github.com/kkaosninja/zola-test/actions/workflows/pages-deployment.yaml/badge.svg?branch=main)](https://github.com/kkaosninja/zola-test/actions/workflows/pages-deployment.yaml)

This is a test blog to figure out how to deploy a [Zola](https://www.getzola.org/) blog with [Abridge theme](https://github.com/Jieiku/abridge) to [Cloudflare Pages](https://pages.cloudflare.com/)

Also hope to get a [Mozilla Observatory score of A+](https://observatory.mozilla.org/analyze/abridge.netlify.app) similar to the [Abridge example blog deployed to Netlify](https://abridge.netlify.app/)

Current Score: https://observatory.mozilla.org/analyze/zola-test.pages.dev

## Local Testing

There is a [Dockerfile](Dockerfile) available which you can use to generate the blog and then have `zola` serve it locally. Commands are below

```bash
docker build . -t zolatest:latest
docker run -d -p 1024:1024 -p 8080:8080 zolatest:latest
```

The blog should be available at http://localhost:8080