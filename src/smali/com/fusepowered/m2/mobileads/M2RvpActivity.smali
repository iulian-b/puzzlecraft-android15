.class public Lcom/fusepowered/m2/mobileads/M2RvpActivity;
.super Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;
.source "MraidVideoPlayerActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;


# instance fields
.field private mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBroadcastIdentifier:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;-><init>()V

    return-void
.end method

.method private createVideoViewController(Landroid/os/Bundle;)Lcom/fusepowered/m2/mobileads/BaseVideoViewController;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "clazz":Ljava/lang/String;
    const-string v0, "vast"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-wide v4, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBroadcastIdentifier:J

    move-object v1, p0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 100
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string v0, "mraid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getBroadcastIdentifierFromIntent(Landroid/content/Intent;)J
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    const-string v0, "broadcastIdentifier"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getBaseVideoViewController()Lcom/fusepowered/m2/mobileads/BaseVideoViewController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->backButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;->onBackPressed()V

    .line 85
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 32
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->getBroadcastIdentifierFromIntent(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBroadcastIdentifier:J

    .line 35
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->createVideoViewController(Landroid/os/Bundle;)Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onCreate()V

    .line 46
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-wide v2, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBroadcastIdentifier:J

    const-string v1, "com.fusepowered.m2.action.interstitial.fail"

    invoke-static {p0, v2, v3, v1}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onDestroy()V

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->finish()V

    .line 123
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onPause()V

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onResume()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/fusepowered/m2/mobileads/BaseVideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->setContentView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method public onSetRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->setRequestedOrientation(I)V

    .line 118
    return-void
.end method

.method public onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 4
    .param p2, "requestCode"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/fusepowered/m2/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m2/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setBaseVideoViewController(Lcom/fusepowered/m2/mobileads/BaseVideoViewController;)V
    .locals 0
    .param p1, "baseVideoViewController"    # Lcom/fusepowered/m2/mobileads/BaseVideoViewController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/M2RvpActivity;->mBaseVideoController:Lcom/fusepowered/m2/mobileads/BaseVideoViewController;

    .line 154
    return-void
.end method
