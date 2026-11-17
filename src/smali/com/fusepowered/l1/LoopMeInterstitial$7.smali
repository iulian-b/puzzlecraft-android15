.class Lcom/fusepowered/l1/LoopMeInterstitial$7;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

.field final synthetic val$error:Lcom/fusepowered/l1/LoopMeError;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$7;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iput-object p2, p0, Lcom/fusepowered/l1/LoopMeInterstitial$7;->val$error:Lcom/fusepowered/l1/LoopMeError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 469
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad fails to load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitial$7;->val$error:Lcom/fusepowered/l1/LoopMeError;

    invoke-virtual {v2}, Lcom/fusepowered/l1/LoopMeError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 470
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$7;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$800(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$7;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitial$7;->val$error:Lcom/fusepowered/l1/LoopMeError;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    .line 471
    return-void
.end method
