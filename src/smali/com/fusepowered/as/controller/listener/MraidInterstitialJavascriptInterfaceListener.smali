.class public Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;
.super Ljava/lang/Object;
.source "MraidInterstitialJavascriptInterfaceListener.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

.field private adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private lastSize:Landroid/graphics/Rect;

.field private onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private setVisibilityListener:Lcom/fusepowered/as/controller/listener/SetVisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/controller/listener/OnCloseListener;Lcom/fusepowered/as/model/ad/MraidProviderAd;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/SetVisibilityListener;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    .line 64
    iput-object p2, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 65
    iput-object p3, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    .line 66
    iput-object p6, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->setVisibilityListener:Lcom/fusepowered/as/controller/listener/SetVisibilityListener;

    .line 67
    iput-object p5, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->controllerId:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener$1;-><init>(Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 74
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 75
    return-void
.end method

.method private getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/OnCloseListener;->onClose()V

    .line 99
    return-void
.end method

.method public expand(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    return-void
.end method

.method public fireMraidEvent(Lcom/fusepowered/as/AerServEvent;)V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    .line 189
    return-void
.end method

.method public fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .locals 1
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
    .line 183
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->controllerId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public getCurrentPosition()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/fusepowered/as/utils/DisplayUtils;->getViewSize(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/as/utils/DisplayUtils;->convertRectToDip(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusepowered/as/utils/DisplayUtils;->getActivitySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPointToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;->INTERSTITIAL:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusepowered/as/utils/DeviceInfo;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPointToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 84
    const-string v0, "ASAerServBannerProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while attempting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    const-string v0, "unknown error"

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->ERROR:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->fireEvent(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;[Ljava/lang/Object;)V

    .line 88
    return-void

    .line 86
    :cond_0
    const-string v1, "\'"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onSizeChange()V
    .locals 6

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 161
    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 164
    :cond_2
    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    .line 165
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;->SIZE_CHANGE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->fireEvent(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidEvent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->execute()V

    .line 129
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 134
    const-string v1, "context"

    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "controllerId"

    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->controllerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "providerAd"

    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-static {v2}, Lcom/fusepowered/as/factory/AdFactory;->buildVideoMraidProviderAd(Lcom/fusepowered/as/model/ad/MraidProviderAd;)Lcom/fusepowered/as/model/ad/MraidProviderAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "mraidPlayVideoUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    new-instance v1, Lcom/fusepowered/as/controller/command/PlayVideoCommand;

    invoke-direct {v1, v0}, Lcom/fusepowered/as/controller/command/PlayVideoCommand;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v1}, Lcom/fusepowered/as/controller/command/PlayVideoCommand;->execute()V

    .line 139
    return-void
.end method

.method public resize(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method public setAdView(Lcom/fusepowered/as/view/component/ASMraidWebView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    .line 80
    return-void
.end method

.method public setOrientationProperties(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setOrientationProperties(Lorg/json/JSONObject;)V

    .line 144
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidInterstitialJavascriptInterfaceListener;->setVisibilityListener:Lcom/fusepowered/as/controller/listener/SetVisibilityListener;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/fusepowered/as/controller/listener/SetVisibilityListener;->setVisibility(Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
