
version master

# Step 1. Add the JitPack repository to your build file
Add it in your root build.gradle at the end of repositories:
```gradle
allprojects {
    repositories {
        ...
        maven { url 'https://jitpack.io' }
    }
}
```
	
# Step 2. Add the dependency
## For Public Android APP

```gradle
dependencies {
    compile 'com.github.conanchen.gedit-api:grpc-javalite:master-SNAPSHOT'
}
```
		
## For Java Application(Client or Server)
    
```gradle
dependencies {
    compile 'com.github.conanchen.gedit-api:grpc-java:master-SNAPSHOT'
}
```
	
# Building ahead of time
You can also build snapshots on each commit if you add GitHub Webhooks.

To add, head to repository Settings -> Webhooks & Services -> Add webhook.

Webhook URL: https://jitpack.io/api/webhooks

Content type: application/json

The webhook will trigger a build for branches that you have previously used with JitPack. So make sure you have requested master-SNAPSHOT from JitPack before adding a webhook.

# objectc install
$ git config --global http.proxy http://127.0.0.1:50312
$ pod install

# 本地开启VPN后，Gt也需要设置代理，才能正常略过GFW，访问goole code等网站
  git config --global http.proxy http://127.0.0.1:50312
  git config --global https.proxy https://127.0.0.1:50312
  git config --global http.proxy 'socks5://127.0.0.1:50311' 
  git config --global https.proxy 'socks5://127.0.0.1:50311'
  
  取消
  git config --global --unset http.proxy
  git config --global --unset https.proxy