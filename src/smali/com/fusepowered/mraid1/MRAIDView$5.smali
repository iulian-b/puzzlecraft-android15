.class Lcom/fusepowered/mraid1/MRAIDView$5;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/mraid1/MRAIDView;->expand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/mraid1/MRAIDView;

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/mraid1/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    iput-object p2, p0, Lcom/fusepowered/mraid1/MRAIDView$5;->val$finalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    iget-object v2, p0, Lcom/fusepowered/mraid1/MRAIDView$5;->val$finalUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/MRAIDView;->access$1200(Lcom/fusepowered/mraid1/MRAIDView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$600(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/fusepowered/mraid1/MRAIDView$5$1;

    invoke-direct {v2, p0, v0}, Lcom/fusepowered/mraid1/MRAIDView$5$1;-><init>(Lcom/fusepowered/mraid1/MRAIDView$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load part 2 expanded content for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/mraid1/MRAIDView$5;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
