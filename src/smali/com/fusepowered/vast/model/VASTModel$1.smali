.class Lcom/fusepowered/vast/model/VASTModel$1;
.super Ljava/lang/Object;
.source "VASTModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/model/VASTModel;->cache(Landroid/content/Context;Lcom/fusepowered/vast/VASTPlayer;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/vast/model/VASTModel;

.field final synthetic val$vastPlayer:Lcom/fusepowered/vast/VASTPlayer;


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/model/VASTModel;Lcom/fusepowered/vast/VASTPlayer;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTModel$1;->this$0:Lcom/fusepowered/vast/model/VASTModel;

    iput-object p2, p0, Lcom/fusepowered/vast/model/VASTModel$1;->val$vastPlayer:Lcom/fusepowered/vast/VASTPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 298
    new-instance v0, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;

    iget-object v1, p0, Lcom/fusepowered/vast/model/VASTModel$1;->this$0:Lcom/fusepowered/vast/model/VASTModel;

    iget-object v2, p0, Lcom/fusepowered/vast/model/VASTModel$1;->val$vastPlayer:Lcom/fusepowered/vast/VASTPlayer;

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;-><init>(Lcom/fusepowered/vast/model/VASTModel;Lcom/fusepowered/vast/VASTPlayer;)V

    .line 299
    .local v0, "task":Lcom/fusepowered/vast/model/VASTModel$DownloadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fusepowered/vast/model/VASTModel$1;->this$0:Lcom/fusepowered/vast/model/VASTModel;

    invoke-static {v3}, Lcom/fusepowered/vast/model/VASTModel;->access$000(Lcom/fusepowered/vast/model/VASTModel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/model/VASTModel$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    return-void
.end method
