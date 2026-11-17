.class final Lcom/fusepowered/u1/f;
.super Ljava/util/TimerTask;
.source "UnityAds.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1110
    invoke-static {}, Lcom/fusepowered/u1/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_1

    .line 1112
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1113
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1114
    sget-object v0, Lcom/fusepowered/u1/UnityAds;->mainview:Lcom/fusepowered/u1/view/UnityAdsMainView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/u1/UnityAds;->mainview:Lcom/fusepowered/u1/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/fusepowered/u1/view/UnityAdsMainView;->webview:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/u1/UnityAds;->mainview:Lcom/fusepowered/u1/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/fusepowered/u1/view/UnityAdsMainView;->webview:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    invoke-virtual {v0}, Lcom/fusepowered/u1/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    sget-object v0, Lcom/fusepowered/u1/UnityAds;->mainview:Lcom/fusepowered/u1/view/UnityAdsMainView;

    iget-object v0, v0, Lcom/fusepowered/u1/view/UnityAdsMainView;->webview:Lcom/fusepowered/u1/webapp/UnityAdsWebView;

    const-string v1, "hideSpinner"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/u1/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1116
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->e()V

    .line 1119
    :cond_0
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->h()V

    .line 1122
    :cond_1
    return-void
.end method
