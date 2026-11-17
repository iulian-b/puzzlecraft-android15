.class public Lcom/fusepowered/ads/adapters/AerServAdAdapter;
.super Lcom/fusepowered/ads/adapters/AdAdapter;
.source "AerServAdAdapter.java"

# interfaces
.implements Lcom/fusepowered/as/AerServEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ads/adapters/AerServAdAdapter$2;
    }
.end annotation


# static fields
.field public static final name:Ljava/lang/String; = "Aerserv"


# instance fields
.field private loaded:Z

.field private mActivity:Landroid/app/Activity;

.field private mAppId:Ljava/lang/String;

.field private mInterstitial:Lcom/fusepowered/as/AerServInterstitial;

.field private mStartDisplayTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AdAdapter;-><init>(Landroid/content/Context;I)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/ads/adapters/AerServAdAdapter;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/ads/adapters/AerServAdAdapter;
    .param p1, "x1"    # Lcom/fusepowered/as/AerServEvent;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->handleAerServEventOnMainThread(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    return-void
.end method

.method private handleAerServEventOnMainThread(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .locals 2
    .param p1, "event"    # Lcom/fusepowered/as/AerServEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/AerServEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v0, Lcom/fusepowered/ads/adapters/AerServAdAdapter$2;->$SwitchMap$com$aerserv$sdk$AerServEvent:[I

    invoke-virtual {p1}, Lcom/fusepowered/as/AerServEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 121
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->loaded:Z

    .line 122
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdDisplayed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClicked(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 132
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdSkipped(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 139
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 142
    :pswitch_5
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 143
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    invoke-interface {v0, p0}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdFailedToLoad(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public adapterVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x19
        0x0
    .end array-data
.end method

.method public displayAd()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->loaded:Z

    if-nez v1, :cond_0

    .line 84
    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    iput-object v1, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->error:Lcom/fusepowered/util/FuseProviderError;

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mInterstitial:Lcom/fusepowered/as/AerServInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/as/AerServInterstitial;->show()V

    .line 98
    iput-boolean v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->loaded:Z

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Aerserv"

    return-object v0
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->loaded:Z

    return v0
.end method

.method public isCapableOfLoading()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-virtual {p0}, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->isCapableOfLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 67
    :goto_0
    return v1

    .line 62
    :cond_0
    new-instance v2, Lcom/fusepowered/as/AerServConfig;

    iget-object v3, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mAppId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/fusepowered/as/AerServConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/fusepowered/as/AerServConfig;->setEventListener(Lcom/fusepowered/as/AerServEventListener;)Lcom/fusepowered/as/AerServConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fusepowered/as/AerServConfig;->setPreload(Z)Lcom/fusepowered/as/AerServConfig;

    move-result-object v0

    .line 65
    .local v0, "config":Lcom/fusepowered/as/AerServConfig;
    new-instance v2, Lcom/fusepowered/as/AerServInterstitial;

    invoke-direct {v2, v0}, Lcom/fusepowered/as/AerServInterstitial;-><init>(Lcom/fusepowered/as/AerServConfig;)V

    iput-object v2, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mInterstitial:Lcom/fusepowered/as/AerServInterstitial;

    goto :goto_0
.end method

.method public minimumAPIVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public onAerServEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .locals 2
    .param p1, "event"    # Lcom/fusepowered/as/AerServEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/AerServEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;-><init>(Lcom/fusepowered/ads/adapters/AerServAdAdapter;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public onSettingsUpdated(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 39
    const-string v1, "aerserv_placement_id"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, "appId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 41
    iput-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mAppId:Ljava/lang/String;

    .line 45
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 46
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->mActivity:Landroid/app/Activity;

    .line 48
    :cond_1
    return-void
.end method

.method public providerVersion()Lcom/fusepowered/ads/APIVersion;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/fusepowered/ads/APIVersion;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/fusepowered/ads/APIVersion;-><init>([I)V

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1b
        0x3
    .end array-data
.end method
