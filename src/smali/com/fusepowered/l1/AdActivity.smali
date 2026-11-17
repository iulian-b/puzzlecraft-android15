.class public final Lcom/fusepowered/l1/AdActivity;
.super Landroid/app/Activity;
.source "AdActivity.java"

# interfaces
.implements Lcom/fusepowered/l1/UserIteractionListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sAdActivity:Lcom/fusepowered/l1/AdActivity;

.field private static sKeepAlive:Z


# instance fields
.field private mAdWebView:Lcom/fusepowered/l1/AdView;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

.field private mShowCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fusepowered/l1/AdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/AdActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applyOrientationFromResponse()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->getAdParams()Lcom/fusepowered/l1/AdParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/l1/AdParams;->getAdOrientation()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "or":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/AdActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/fusepowered/l1/AdActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method static finishActivity()V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/fusepowered/l1/AdActivity;->sAdActivity:Lcom/fusepowered/l1/AdActivity;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/fusepowered/l1/AdActivity;->sAdActivity:Lcom/fusepowered/l1/AdActivity;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdActivity;->finish()V

    .line 120
    :cond_0
    return-void
.end method

.method static setKeepAlive(Z)V
    .locals 0
    .param p0, "alive"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lcom/fusepowered/l1/AdActivity;->sKeepAlive:Z

    .line 80
    return-void
.end method


# virtual methods
.method public onClosePressed()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdActivity;->finish()V

    .line 104
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/fusepowered/l1/BaseAdHolder;->get()Lcom/fusepowered/l1/BaseAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/l1/LoopMeInterstitial;

    iput-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 32
    invoke-direct {p0}, Lcom/fusepowered/l1/AdActivity;->applyOrientationFromResponse()V

    .line 34
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, p0}, Lcom/fusepowered/l1/LoopMeInterstitial;->addUserIteractionListener(Lcom/fusepowered/l1/UserIteractionListener;)V

    .line 36
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 37
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mAdWebView:Lcom/fusepowered/l1/AdView;

    .line 38
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mAdWebView:Lcom/fusepowered/l1/AdView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/AdView;->setBackgroundColor(I)V

    .line 40
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/l1/AdActivity;->mAdWebView:Lcom/fusepowered/l1/AdView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 42
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/l1/AdActivity;->setContentView(Landroid/view/View;)V

    .line 44
    sput-object p0, Lcom/fusepowered/l1/AdActivity;->sAdActivity:Lcom/fusepowered/l1/AdActivity;

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/fusepowered/l1/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 63
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialHide(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    sget-boolean v0, Lcom/fusepowered/l1/AdActivity;->sKeepAlive:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/fusepowered/l1/AdActivity;->finish()V

    .line 76
    :cond_0
    return-void
.end method

.method public onPausePressed(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onPlayPressed(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/fusepowered/l1/AdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/l1/AdActivity;->sKeepAlive:Z

    .line 88
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mAdWebView:Lcom/fusepowered/l1/AdView;

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->onAppear()V

    .line 90
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v0, p0, Lcom/fusepowered/l1/AdActivity;->mShowCounter:I

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/AdActivity;->mLoopmeInterstitial:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialShow(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 95
    iget v0, p0, Lcom/fusepowered/l1/AdActivity;->mShowCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/l1/AdActivity;->mShowCounter:I

    goto :goto_0
.end method
