.class Lcom/fusepowered/l1/tasks/AdFetcher$2;
.super Ljava/lang/Object;
.source "AdFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/tasks/AdFetcher;->complete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/tasks/AdFetcher;

.field final synthetic val$error:Lcom/fusepowered/l1/LoopMeError;

.field final synthetic val$params:Lcom/fusepowered/l1/AdParams;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/tasks/AdFetcher;Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fusepowered/l1/tasks/AdFetcher$2;->this$0:Lcom/fusepowered/l1/tasks/AdFetcher;

    iput-object p2, p0, Lcom/fusepowered/l1/tasks/AdFetcher$2;->val$params:Lcom/fusepowered/l1/AdParams;

    iput-object p3, p0, Lcom/fusepowered/l1/tasks/AdFetcher$2;->val$error:Lcom/fusepowered/l1/LoopMeError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/l1/tasks/AdFetcher$2;->this$0:Lcom/fusepowered/l1/tasks/AdFetcher;

    invoke-static {v0}, Lcom/fusepowered/l1/tasks/AdFetcher;->access$100(Lcom/fusepowered/l1/tasks/AdFetcher;)Lcom/fusepowered/l1/tasks/AdFetcher$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/l1/tasks/AdFetcher$2;->val$params:Lcom/fusepowered/l1/AdParams;

    iget-object v2, p0, Lcom/fusepowered/l1/tasks/AdFetcher$2;->val$error:Lcom/fusepowered/l1/LoopMeError;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/l1/tasks/AdFetcher$Listener;->onComplete(Lcom/fusepowered/l1/AdParams;Lcom/fusepowered/l1/LoopMeError;)V

    .line 76
    return-void
.end method
