.class Lcom/fusepowered/l1/LoopMeInterstitial$4;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Lcom/fusepowered/l1/tasks/AdFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial;->fetchAd()V
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
    .line 309
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$4;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 2
    .param p1, "params"    # Lcom/fusepowered/l1/AdParams;
    .param p2, "error"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    .line 313
    if-eqz p2, :cond_0

    .line 314
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$4;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$4;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, v1, p2}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/fusepowered/l1/LoopMeInterstitial;Lcom/fusepowered/l1/LoopMeError;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$4;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/LoopMeInterstitial;->fetchAdComplete(Lcom/fusepowered/l1/AdParams;)V

    goto :goto_0
.end method
