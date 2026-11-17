.class public Lcom/fusepowered/as/adapter/asyume/YuMeActivity;
.super Lcom/fusepowered/as/view/ASInterstitialActivity;
.source "YuMeActivity.java"


# instance fields
.field private frameLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildInterstitialPlayer()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 45
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 46
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->setContentView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Back button press ignored"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->tryToGoFullScreen()V

    .line 31
    invoke-virtual {p0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->buildInterstitialPlayer()V

    .line 33
    invoke-virtual {p0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->registerEvents()V

    .line 34
    invoke-virtual {p0}, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->playInterstitial()V

    .line 35
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onDestroy()V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/fusepowered/as/view/ASInterstitialActivity;->onPause()V

    .line 69
    invoke-static {}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->getInstance()Lcom/fusepowered/as/adapter/Provider;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->pause()V

    .line 70
    return-void
.end method

.method protected playInterstitial()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->getInstance()Lcom/fusepowered/as/adapter/Provider;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;

    invoke-virtual {v0, p0}, Lcom/fusepowered/as/adapter/asyume/ASYumeInterstitialProvider;->onViewReady(Lcom/fusepowered/as/adapter/asyume/YuMeActivity;)V

    .line 64
    return-void
.end method

.method protected registerEvents()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public showHiddenViews()V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 89
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->closeButton:Lcom/fusepowered/as/view/component/CloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/fusepowered/as/view/ASInterstitialActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 91
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asyume/YuMeActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 93
    return-void
.end method
