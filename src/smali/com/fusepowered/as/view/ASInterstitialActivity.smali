.class public abstract Lcom/fusepowered/as/view/ASInterstitialActivity;
.super Landroid/app/Activity;
.source "ASInterstitialActivity.java"

# interfaces
.implements Lcom/fusepowered/as/view/View;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final VIEW_ID:Ljava/lang/String;

.field protected closeButton:Lcom/fusepowered/as/view/component/CloseButton;

.field protected controllerId:Ljava/lang/String;

.field protected providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

.field protected relativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/fusepowered/as/view/ASInterstitialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/as/view/ASInterstitialActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->VIEW_ID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fusepowered/as/view/ASInterstitialActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract buildInterstitialPlayer()V
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Back button press ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    const-string v1, "controllerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Didn\'t get a correctly configured payload.  Cannot continue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    const-string v1, "controllerId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->controllerId:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->controllerId:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 49
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Lcom/fusepowered/as/view/ASInterstitialActivity$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/ASInterstitialActivity$1;-><init>(Lcom/fusepowered/as/view/ASInterstitialActivity;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->providerListener:Lcom/fusepowered/as/controller/listener/ProviderListener;

    .line 89
    :cond_2
    invoke-static {}, Lcom/fusepowered/as/view/ViewLocator;->getInstance()Lcom/fusepowered/as/view/ViewLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->VIEW_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/fusepowered/as/view/ViewLocator;->registerView(Ljava/lang/String;Lcom/fusepowered/as/view/View;)V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    invoke-static {}, Lcom/fusepowered/as/view/ViewLocator;->getInstance()Lcom/fusepowered/as/view/ViewLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->VIEW_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/ViewLocator;->unregisterView(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected abstract playInterstitial()V
.end method

.method protected abstract registerEvents()V
.end method

.method protected tryToGoFullScreen()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not go full screen"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/as/utils/AerServLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
