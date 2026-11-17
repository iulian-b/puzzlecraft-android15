.class Lcom/fusepowered/ads/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/AdManager;->checkAdAvailableAsync(JLcom/fusepowered/util/FuseCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/AdManager;

.field final synthetic val$callback:Lcom/fusepowered/util/FuseCallback;

.field final synthetic val$timeoutMillis:J


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/util/FuseCallback;J)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager$1;->this$0:Lcom/fusepowered/ads/AdManager;

    iput-object p2, p0, Lcom/fusepowered/ads/AdManager$1;->val$callback:Lcom/fusepowered/util/FuseCallback;

    iput-wide p3, p0, Lcom/fusepowered/ads/AdManager$1;->val$timeoutMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 266
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$1;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v1}, Lcom/fusepowered/ads/AdManager;->access$000(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdCheckRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$1;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v1}, Lcom/fusepowered/ads/AdManager;->access$000(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/AdCheckRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/ads/AdCheckRequest;->abort()V

    .line 268
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$1;->this$0:Lcom/fusepowered/ads/AdManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fusepowered/ads/AdManager;->access$002(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/AdCheckRequest;)Lcom/fusepowered/ads/AdCheckRequest;

    .line 271
    :cond_0
    new-instance v0, Lcom/fusepowered/ads/AdCheckRequest;

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$1;->val$callback:Lcom/fusepowered/util/FuseCallback;

    iget-wide v2, p0, Lcom/fusepowered/ads/AdManager$1;->val$timeoutMillis:J

    iget-object v4, p0, Lcom/fusepowered/ads/AdManager$1;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v4}, Lcom/fusepowered/ads/AdManager;->access$100(Lcom/fusepowered/ads/AdManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/fusepowered/ads/AdManager$1;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/ads/AdCheckRequest;-><init>(Lcom/fusepowered/util/FuseCallback;JLandroid/os/Handler;Lcom/fusepowered/ads/AdManager;)V

    .line 272
    .local v0, "checkRequest":Lcom/fusepowered/ads/AdCheckRequest;
    invoke-virtual {v0}, Lcom/fusepowered/ads/AdCheckRequest;->start()Z

    move-result v6

    .line 274
    .local v6, "didReturnImmediately":Z
    if-nez v6, :cond_1

    .line 275
    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$1;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v1, v0}, Lcom/fusepowered/ads/AdManager;->access$002(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/AdCheckRequest;)Lcom/fusepowered/ads/AdCheckRequest;

    .line 277
    :cond_1
    return-void
.end method
