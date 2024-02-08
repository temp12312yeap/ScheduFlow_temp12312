# ScheduFlow-vue
https://scheduflow.web.app

## How To Contribute
- WSL Ubuntu 22.04 LTS
- vim
- html/css
- vue.js

## How To Deploy
### STG dev  ( https://scheduflow.web.app )
```bash
# manual firebase cmd*
$ firebase deploy
=== Deploying to 'scheduflow'...

i  deploying hosting
i  hosting[scheduflow]: beginning deploy...
i  hosting[scheduflow]: found 89 files in /
✔  hosting[scheduflow]: file upload complete
i  hosting[scheduflow]: finalizing version...
✔  hosting[scheduflow]: version finalized
i  hosting[scheduflow]: releasing new version...
✔  hosting[scheduflow]: release complete

✔  Deploy complete!

Project Console: https://console.firebase.google.com/project/scheduflow/overview
Hosting URL: https://scheduflow.web.app
```
### STG prod ( choi3179.github.io )

|STG|BRANCH|TRIGGER|URL|
|------|---|---|---|
|DEV|Branch of PR|manual firebase cmd|[https://scheduflow.web.app](https://scheduflow.web.app)|

## Project Setup

```sh
npm install
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Compile and Minify for Production

```sh
npm run build
```
