.class Lcom/fusepowered/l1/LoopMeInterstitialUnity$2;
.super Ljava/lang/Object;
.source "LoopMeInterstitialUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitialUnity;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->access$000(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)Lcom/fusepowered/l1/LoopMeInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->access$000(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)Lcom/fusepowered/l1/LoopMeInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->load()V

    .line 52
    :cond_0
    return-void
.end method
