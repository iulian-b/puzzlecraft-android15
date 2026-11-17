.class Lcom/fusepowered/l1/LoopMeInterstitial$5;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial;->releaseResources()V
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
    .line 357
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$5;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$5;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$600(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/AdView;->stopLoading()V

    .line 362
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$5;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$600(Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/AdView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/AdView;->clearCache(Z)V

    .line 363
    return-void
.end method
