
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

					