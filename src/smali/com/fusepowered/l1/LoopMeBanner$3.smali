.class Lcom/fusepowered/l1/LoopMeBanner$3;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"

# interfaces
.implements Lcom/fusepowered/l1/tasks/AdFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeBanner;->proceedLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeBanner;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeBanner$3;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 2
    .param p1, "params"    # Lcom/fusepowered/l1/AdParams;
    .param p2, "error"    # Lcom/fusepowered/l1/LoopMeError;

    .prologue
    .line 172
    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$3;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBanner$3;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-virtual {v0, v1, p2}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$3;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/LoopMeBanner;->fetchAdComplete(Lcom/fusepowered/l1/AdParams;)V

    goto :goto_0
.end method
