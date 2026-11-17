.class Lcom/fusepowered/l1/LoopMeInterstitial$2$1;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial$2;->onJsVideoLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/l1/LoopMeInterstitial$2;

.field final synthetic val$videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeInterstitial$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2$1;->this$1:Lcom/fusepowered/l1/LoopMeInterstitial$2;

    iput-object p2, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2$1;->val$videoUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2$1;->this$1:Lcom/fusepowered/l1/LoopMeInterstitial$2;

    iget-object v0, v0, Lcom/fusepowered/l1/LoopMeInterstitial$2;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$2$1;->val$videoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fusepowered/l1/LoopMeInterstitial;->access$400(Lcom/fusepowered/l1/LoopMeInterstitial;Ljava/lang/String;)V

    .line 206
    return-void
.end method
