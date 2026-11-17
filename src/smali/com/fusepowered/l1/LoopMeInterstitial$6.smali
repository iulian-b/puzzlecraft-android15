.class Lcom/fusepowered/l1/LoopMeInterstitial$6;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadSuccess(Lcom/fusepowered/l1/LoopMeInterstitial;)V
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
    .line 450
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$6;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 454
    invoke-static {}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad successfully loaded"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 455
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$6;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$800(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/LoopMeInterstitial$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$6;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-interface {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial$Listener;->onLoopMeInterstitialLoadSuccess(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 456
    return-void
.end method
