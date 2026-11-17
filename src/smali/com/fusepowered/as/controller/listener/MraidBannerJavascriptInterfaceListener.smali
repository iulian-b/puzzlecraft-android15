.class public Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;
.super Ljava/lang/Object;
.source "MraidBannerJavascriptInterfaceListener.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$6;
    }
.end annotation


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

.field private adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

.field private closeButton:Lcom/fusepowered/as/view/component/CloseButton;

.field private context:Landroid/content/Context;

.field private controllerId:Ljava/lang/String;

.field private defaultPosition:Landroid/graphics/Rect;

.field private lastOnCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

.field private lastSize:Landroid/graphics/Rect;

.field private onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private properties:Ljava/util/Properties;

.field private providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field private setVisibilityListener:Lcom/fusepowered/as/controller/listener/SetVisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Properties;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/controller/listener/SetVisibilityListener;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    .line 89
    iput-object p3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 90
    iput-object p4, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->setVisibilityListener:Lcom/fusepowered/as/controller/listener/SetVisibilityListener;

    .line 92
    const-string v0, "controllerId"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->controllerId:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->controllerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->controllerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "controllerId not found in properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    const-string v0, "providerAd"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/ad/MraidProviderAd;

    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    .line 99
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerAd not found in properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    const-string v1, "mraidJavascriptInterfaceListener"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$1;-><init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 109
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)Lcom/fusepowered/as/view/component/CloseButton;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Lcom/fusepowered/as/view/component/CloseButton;)Lcom/fusepowered/as/view/component/CloseButton;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)Lcom/fusepowered/as/view/component/ASMraidWebView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    return-object v0
.end method

.method private getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->EXPANDED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->RESIZED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    if-ne v0, v1, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/OnCloseListener;->onClose()V

    .line 159
    :cond_1
    return-void
.end method

.method public closeResizedBanner()V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 290
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fusepowered/as/utils/DisplayUtils;->convertDipToPx(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 295
    new-instance v2, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$5;-><init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 310
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public expand(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->DEFAULT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->RESIZED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    if-ne v0, v1, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    const-string v1, "providerAd"

    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-static {v2}, Lcom/fusepowered/as/factory/AdFactory;->buildExpandedMraidProviderAd(Lcom/fusepowered/as/model/ad/HTMLProviderAd;)Lcom/fusepowered/as/model/ad/MraidProviderAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    const-string v1, "mraidExpandCustomClose"

    const-string v2, "useCustomClose"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    invoke-interface {v0, v1, p2}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onExpand(Ljava/util/Properties;Ljava/lang/String;)V

    .line 325
    :cond_1
    return-void
.end method

.method public fireMraidEvent(Lcom/fusepowered/as/AerServEvent;)V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    .line 394
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
    .line 388
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->controllerId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    .line 389
    return-void
.end method

.method public getCurrentPosition()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/fusepowered/as/utils/DisplayUtils;->getViewSize(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/as/utils/DisplayUtils;->convertRectToDip(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->defaultPosition:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 177
    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->defaultPosition:Landroid/graphics/Rect;

    .line 178
    :cond_0
    return-object v0
.end method

.method public getMaxSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusepowered/as/utils/DisplayUtils;->getActivitySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPointToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;->INLINE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/fusepowered/as/utils/DeviceInfo;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPointToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

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

    .line 142
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 143
    if-nez v0, :cond_0

    const-string v0, "unknown error"

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

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

    .line 145
    return-void

    .line 143
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
    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getCurrentPosition()Landroid/graphics/Rect;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 364
    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 367
    :cond_2
    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->lastSize:Landroid/graphics/Rect;

    .line 368
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

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

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->execute()V

    .line 330
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    const-string v1, "context"

    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    const-string v1, "providerAd"

    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->ad:Lcom/fusepowered/as/model/ad/MraidProviderAd;

    invoke-static {v2}, Lcom/fusepowered/as/factory/AdFactory;->buildVideoMraidProviderAd(Lcom/fusepowered/as/model/ad/MraidProviderAd;)Lcom/fusepowered/as/model/ad/MraidProviderAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    const-string v1, "mraidPlayVideoUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    new-instance v0, Lcom/fusepowered/as/controller/command/PlayVideoCommand;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/PlayVideoCommand;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/PlayVideoCommand;->execute()V

    .line 340
    return-void
.end method

.method public resize(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 184
    sget-object v1, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$6;->$SwitchMap$com$aerserv$sdk$adapter$asaerserv$mraid$MraidState:[I

    invoke-direct {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getMraidState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 193
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 194
    const-string v2, "customClosePosition"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    const-string v3, "allowOffscreen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 198
    invoke-virtual {p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->getMaxSize()Landroid/graphics/Point;

    move-result-object v4

    .line 201
    const/16 v5, 0x32

    if-ge v1, v5, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resized creatives must be at least 50x50 to fit the close region"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call mraid.resize() while banner is in state EXPANDED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    if-nez v3, :cond_1

    iget v3, v4, Landroid/graphics/Point;->y:I

    if-le v1, v3, :cond_1

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The height value is too big for the screen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertDipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 218
    iget-object v3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    if-nez v3, :cond_3

    const/4 v5, 0x1

    .line 219
    :goto_0
    if-eqz v5, :cond_2

    .line 220
    new-instance v3, Lcom/fusepowered/as/view/component/CloseButton;

    iget-object v4, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/fusepowered/as/view/component/CloseButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-virtual {v3, v0}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(Z)V

    .line 226
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    iget v0, v0, Lcom/fusepowered/as/view/component/CloseButton;->size:I

    iget-object v3, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    iget v3, v3, Lcom/fusepowered/as/view/component/CloseButton;->size:I

    invoke-direct {v4, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 229
    const-string v0, "center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    new-instance v2, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$2;

    invoke-direct {v2, p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$2;-><init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)V

    invoke-virtual {v0, v2}, Lcom/fusepowered/as/view/component/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    new-instance v0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$3;-><init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->setOnCloseListener(Lcom/fusepowered/as/controller/listener/OnCloseListener;)V

    .line 264
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 265
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 269
    new-instance v0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener$4;-><init>(Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Z)V

    .line 283
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :pswitch_1
    return-void

    :cond_3
    move v5, v0

    .line 218
    goto :goto_0

    .line 232
    :cond_4
    const-string v0, "bottom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    :goto_2
    const-string v0, "left"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 235
    :cond_5
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 239
    :cond_6
    const-string v0, "center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 242
    :cond_7
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public revertOnCloseListener()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->lastOnCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    .line 127
    return-void
.end method

.method public setAdView(Lcom/fusepowered/as/view/component/ASMraidWebView;)V
    .locals 3

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    .line 136
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->properties:Ljava/util/Properties;

    const-string v1, "mraidBannerViewId"

    iget-object v2, p1, Lcom/fusepowered/as/view/component/ASMraidWebView;->VIEW_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public setOnCloseListener(Lcom/fusepowered/as/controller/listener/OnCloseListener;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    iput-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->lastOnCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    .line 119
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->onCloseListener:Lcom/fusepowered/as/controller/listener/OnCloseListener;

    .line 120
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
    .line 344
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->adView:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setOrientationProperties(Lorg/json/JSONObject;)V

    .line 345
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->setVisibilityListener:Lcom/fusepowered/as/controller/listener/SetVisibilityListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->setVisibilityListener:Lcom/fusepowered/as/controller/listener/SetVisibilityListener;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/fusepowered/as/controller/listener/SetVisibilityListener;->setVisibility(Z)V

    .line 353
    :cond_0
    return-void

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
