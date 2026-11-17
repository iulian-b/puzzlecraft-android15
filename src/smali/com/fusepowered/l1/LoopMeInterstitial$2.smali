.class Lcom/fusepowered/l1/LoopMeInterstitial$2;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Lcom/fusepowered/l1/BridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial;->initBridgeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeInterstitial;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsClose()V
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onJsClose"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 223
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$100(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/UserIteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$100(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/UserIteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/l1/UserIteractionListener;->onClosePressed()V

    .line 226
    :cond_0
    return-void
.end method

.method public onJsLoadFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "mess"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onJsLoadFail"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 231
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    new-instance v2, Lcom/fusepowered/l1/LoopMeError;

    invoke-direct {v2, p1}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    .line 232
    return-void
.end method

.method public onJsLoadSuccess()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onJsLoadSuccess"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 216
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$500(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 217
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadSuccess(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 218
    return-void
.end method

.method public onJsVideoLoad(Ljava/lang/String;)V
    .locals 5
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onJsVideoLoad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 198
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$202(Lcom/fusepowered/l1/LoopMeInterstitial;Z)Z

    .line 200
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/fusepowered/l1/LoopMeInterstitial$2$1;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/l1/LoopMeInterstitial$2$1;-><init>(Lcom/fusepowered/l1/LoopMeInterstitial$2;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$302(Lcom/fusepowered/l1/LoopMeInterstitial;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    .line 208
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 209
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$300(Lcom/fusepowered/l1/LoopMeInterstitial;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 210
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 211
    return-void
.end method

.method public onJsVideoMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 190
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsVideoMute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 192
    return-void
.end method

.method public onJsVideoPause(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 181
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsVideoPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 183
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$100(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/UserIteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$100(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/UserIteractionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/UserIteractionListener;->onPausePressed(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public onJsVideoPlay(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 172
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJsVideoPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 174
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$100(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/UserIteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$100(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/UserIteractionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/l1/UserIteractionListener;->onPlayPressed(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public onJsVideoStretch(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 258
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onJsVideoStretch"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 259
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$700(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/VideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    if-eqz p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$700(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/VideoController;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/l1/VideoStretchOption;->STRECH:Lcom/fusepowered/l1/VideoStretchOption;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/VideoController;->setStreachVideoParameter(Lcom/fusepowered/l1/VideoStretchOption;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$700(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/VideoController;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/l1/VideoStretchOption;->NO_STRETCH:Lcom/fusepowered/l1/VideoStretchOption;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/VideoController;->setStreachVideoParameter(Lcom/fusepowered/l1/VideoStretchOption;)V

    goto :goto_0
.end method

.method public onNonLoopMe(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onNonJs"

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 237
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, v1, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/l1/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, v1, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v1, v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialClicked(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 244
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$600(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/l1/AdView;->onHidden()V

    .line 245
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$200(Lcom/fusepowered/l1/LoopMeInterstitial;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {v4}, Lcom/fusepowered/l1/PlayerActivity;->setKeepAlive(Z)V

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, v1, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 254
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 248
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {v4}, Lcom/fusepowered/l1/AdActivity;->setKeepAlive(Z)V

    goto :goto_0

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No internet connection"

    sget-object v3, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_1
.end method
