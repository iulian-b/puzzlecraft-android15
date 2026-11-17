.class Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;
.super Ljava/lang/Object;
.source "LoopMeInterstitialUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitialUnity;->setAppKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

.field final synthetic val$appKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeInterstitialUnity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    iput-object p2, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;->val$appKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    new-instance v1, Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    invoke-static {v2}, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->access$100(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;->val$appKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/fusepowered/l1/LoopMeInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->access$002(Lcom/fusepowered/l1/LoopMeInterstitialUnity;Lcom/fusepowered/l1/LoopMeInterstitial;)Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 38
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeInterstitialUnity;->access$000(Lcom/fusepowered/l1/LoopMeInterstitialUnity;)Lcom/fusepowered/l1/LoopMeInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitialUnity$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitialUnity;

    invoke-virtual {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->addListener(Lcom/fusepowered/l1/LoopMeInterstitial$Listener;)V

    .line 39
    return-void
.end method
