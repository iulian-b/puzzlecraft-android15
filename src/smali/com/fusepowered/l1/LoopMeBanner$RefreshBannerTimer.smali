.class Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;
.super Landroid/os/CountDownTimer;
.source "LoopMeBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/l1/LoopMeBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshBannerTimer"
.end annotation


# instance fields
.field private volatile counter:I

.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeBanner;


# direct methods
.method public constructor <init>(Lcom/fusepowered/l1/LoopMeBanner;JJ)V
    .locals 4
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 245
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    .line 246
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 250
    const/4 v0, 0x1

    iput v0, p0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->counter:I

    .line 247
    invoke-static {}, Lcom/fusepowered/l1/LoopMeBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule refresh ad every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 248
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 258
    iget v0, p0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->counter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    iget v0, p0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->counter:I

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBanner;->getWebView()Lcom/fusepowered/l1/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->onDisappear()V

    .line 265
    invoke-static {}, Lcom/fusepowered/l1/LoopMeBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refresh banner"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 266
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$RefreshBannerTimer;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeBanner;->access$100(Lcom/fusepowered/l1/LoopMeBanner;)V

    goto :goto_0
.end method
