.class final Lcom/fusepowered/u1/g;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1153
    sget-object v0, Lcom/fusepowered/u1/UnityAds;->webdata:Lcom/fusepowered/u1/webapp/UnityAdsWebData;

    if-eqz v0, :cond_0

    .line 1154
    sget-object v0, Lcom/fusepowered/u1/UnityAds;->webdata:Lcom/fusepowered/u1/webapp/UnityAdsWebData;

    invoke-virtual {v0}, Lcom/fusepowered/u1/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 1156
    :cond_0
    return-void
.end method
