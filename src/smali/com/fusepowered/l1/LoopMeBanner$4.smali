.class Lcom/fusepowered/l1/LoopMeBanner$4;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeBanner;

.field final synthetic val$error:Lcom/fusepowered/l1/LoopMeError;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeBanner$4;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iput-object p2, p0, Lcom/fusepowered/l1/LoopMeBanner$4;->val$error:Lcom/fusepowered/l1/LoopMeError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$4;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-static {v0}, Lcom/fusepowered/l1/LoopMeBanner;->access$200(Lcom/fusepowered/l1/LoopMeBanner;)Lcom/fusepowered/l1/LoopMeBanner$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBanner$4;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeBanner$4;->val$error:Lcom/fusepowered/l1/LoopMeError;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/l1/LoopMeBanner$Listener;->onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V

    .line 292
    return-void
.end method
