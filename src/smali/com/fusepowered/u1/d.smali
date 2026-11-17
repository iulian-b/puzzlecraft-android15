.class final Lcom/fusepowered/u1/d;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/c;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/c;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/fusepowered/u1/d;->a:Lcom/fusepowered/u1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 957
    sget-object v0, Lcom/fusepowered/u1/UnityAds;->mainview:Lcom/fusepowered/u1/view/UnityAdsMainView;

    if-eqz v0, :cond_2

    .line 958
    sget-object v0, Lcom/fusepowered/u1/UnityAds;->mainview:Lcom/fusepowered/u1/view/UnityAdsMainView;

    iget-object v1, p0, Lcom/fusepowered/u1/d;->a:Lcom/fusepowered/u1/c;

    iget-object v1, v1, Lcom/fusepowered/u1/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/u1/d;->a:Lcom/fusepowered/u1/c;

    iget-object v2, v2, Lcom/fusepowered/u1/c;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/u1/view/UnityAdsMainView;->openAds(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 960
    invoke-static {}, Lcom/fusepowered/u1/webapp/UnityAdsWebData;->getZoneManager()Lcom/fusepowered/u1/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/u1/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/fusepowered/u1/zone/UnityAdsZone;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Lcom/fusepowered/u1/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->c()V

    .line 965
    :cond_0
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->d()Lcom/fusepowered/u1/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 966
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->d()Lcom/fusepowered/u1/IUnityAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/u1/IUnityAdsListener;->onShow()V

    .line 971
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    const-string v0, "mainview null after open, closing"

    invoke-static {v0}, Lcom/fusepowered/u1/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 969
    invoke-static {}, Lcom/fusepowered/u1/UnityAds;->e()V

    goto :goto_0
.end method
