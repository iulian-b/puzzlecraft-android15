.class Lcom/fusepowered/l1/LoopMeInterstitial$3;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Lcom/fusepowered/l1/ExpirationTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial;->startExpirationTimer()V
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
    .line 285
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$3;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$3;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$3;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialExpired(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    .line 290
    return-void
.end method
